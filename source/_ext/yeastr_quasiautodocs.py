from sphinx.application import Sphinx
from sphinx.util.typing import ExtensionMetadata
import yeastr.import_hooks
from _yeastr_directive import YeastrDirective


def setup(app: Sphinx) -> ExtensionMetadata:
    app.add_directive('yeastr', YeastrDirective)
    return {
        'version': '0.0.2',
        'parallel_read_safe': False,
        'parallel_write_safe': True,
    }
