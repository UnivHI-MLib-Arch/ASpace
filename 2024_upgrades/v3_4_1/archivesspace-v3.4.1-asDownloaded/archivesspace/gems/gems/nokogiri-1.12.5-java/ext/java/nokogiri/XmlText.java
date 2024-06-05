package nokogiri;

import static nokogiri.internals.NokogiriHelpers.getCachedNodeOrCreate;
import static nokogiri.internals.NokogiriHelpers.rubyStringToString;
import nokogiri.internals.SaveContextVisitor;

import org.jcodings.specific.USASCIIEncoding;
import org.jruby.Ruby;
import org.jruby.RubyClass;
import org.jruby.RubyString;
import org.jruby.anno.JRubyClass;
import org.jruby.runtime.ThreadContext;
import org.jruby.runtime.builtin.IRubyObject;
import org.jruby.util.ByteList;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.Text;

/**
 * Class for Nokogiri::XML::Text
 *
 * @author sergio
 * @author Yoko Harada <yokolet@gmail.com>
 */
@JRubyClass(name = "Nokogiri::XML::Text", parent = "Nokogiri::XML::CharacterData")
public class XmlText extends XmlNode
{

  private static final ByteList TEXT = ByteList.create("text");
  static { TEXT.setEncoding(USASCIIEncoding.INSTANCE); }

  public
  XmlText(Ruby runtime, RubyClass rubyClass, Node node)
  {
    super(runtime, rubyClass, node);
  }

  public
  XmlText(Ruby runtime, RubyClass klass)
  {
    super(runtime, klass);
  }

  @Override
  protected void
  init(ThreadContext context, IRubyObject[] args)
  {
    if (args.length < 2) {
      throw context.runtime.newArgumentError(args.length, 2);
    }

    content = args[0];
    IRubyObject xNode = args[1];

    Document document = asXmlNode(context, xNode).getOwnerDocument();
    // text node content should not be encoded when it is created by Text node.
    // while content should be encoded when it is created by Element node.
    Node node = document.createTextNode(rubyStringToString(content));
    setNode(context.runtime, node);
  }

  @Override
  protected IRubyObject
  getNodeName(ThreadContext context)
  {
    if (name == null) { name = RubyString.newStringShared(context.runtime, TEXT); }
    return name;
  }

  @Override
  public void
  accept(ThreadContext context, SaveContextVisitor visitor)
  {
    visitor.enter((Text) node);
    Node child = node.getFirstChild();
    while (child != null) {
      IRubyObject nokoNode = getCachedNodeOrCreate(context.runtime, child);
      if (nokoNode instanceof XmlNode) {
        XmlNode cur = (XmlNode) nokoNode;
        cur.accept(context, visitor);
      } else if (nokoNode instanceof XmlNamespace) {
        XmlNamespace cur = (XmlNamespace) nokoNode;
        cur.accept(context, visitor);
      }
      child = child.getNextSibling();
    }
    visitor.leave(node);
  }
}
