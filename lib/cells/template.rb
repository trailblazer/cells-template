require "cells/template/version"

module Cells
  module TemplateBase
    def self.included(includer)
      includer.send :include, ActionView::Helpers::FormHelper
      includer.send :include, Helpers
    end

    module Helpers
      def form_tag_in_block(html_options, &block)
        content = capture(&block)
        form_tag_with_body(html_options, content)
      end

      def form_tag_with_body(html_options, content)
        "#{form_tag_html(html_options)}" << content.to_s << "</form>"
      end
    end
  end
end
