//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.
//

import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("FijkValue test", () {
    test("Constructor", () {
      FijkValue value = FijkValue.uninitialized();
      expect(value, isNotNull);
    });

    test("eq", () {
      FijkValue value1 = FijkValue.uninitialized();
      FijkValue value2 = FijkValue.uninitialized();
      expect(value1, value2);
      expect(value1.hashCode, value2.hashCode);

      value1 = value1.copyWith(prepared: true);

      expect(value1 == value2, false);
      expect(value1.hashCode == value2.hashCode, false);

      value2 = value2.copyWith(prepared: true);
      expect(value1, value2);
      expect(value1.hashCode, value2.hashCode);
    });
  });
}
