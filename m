Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0364A470C
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 06:13:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oUGkmzOnxCa5TSq0THMfpdUuwUwjwit/WN6j/J4rI2E=; b=elRlHqU1G59HYJKntQzuAh+DS
	uiOg5OXL63P/EIiUF4JzQjGXL+uMuA8QiAouiY2rLNHjcUj3NUy63El/JNZxNet3h7jBy94CS9ADW
	5E8ZYVi8QEPLhu+2CjX8kjdVtyQ1cxjkb7Okc9uX/cWnDcuTGCX4YDiU0Kany8IYh+nm4Zyy9d8JW
	N5gqyqjkm8PM5JRd4371VMtnB8+mFWlZizKS6IOp9oMp+3xddkY3tYdokmF71Yb5tT360c1ZXDP+T
	fVurZ21/4cz/b1BycPLQF4+NSKem8NK+kkZbobDm82tOQ/6xyCcBimuAh4QpHJr/H8PvBtUQXLmPa
	PNPfPO/8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4HEp-0003zN-Dm; Sun, 01 Sep 2019 04:13:17 +0000
Received: from vds2011x11.startdedicated.de ([62.138.18.229]
 helo=mail.softart-ge.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4HEZ-0003yx-Ep
 for openwrt-devel@lists.openwrt.org; Sun, 01 Sep 2019 04:13:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.softart-ge.com (Postfix) with ESMTP id 09C9AC02AF
 for <openwrt-devel@lists.openwrt.org>; Sun,  1 Sep 2019 06:12:47 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at softart-ge.com
Received: from mail.softart-ge.com ([127.0.0.1])
 by localhost (softart-ge.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WsOqZ8jcOKpx for <openwrt-devel@lists.openwrt.org>;
 Sun,  1 Sep 2019 06:12:42 +0200 (CEST)
Received: from [10.1.0.71] (176-12-44-21.pon.spectrumnet.bg [176.12.44.21])
 by mail.softart-ge.com (Postfix) with ESMTPA id 55AE7C01A3
 for <openwrt-devel@lists.openwrt.org>; Sun,  1 Sep 2019 06:12:42 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
References: <20190830154607.6463-1-zajec5@gmail.com>
 <vg58MWhCCD22S7ItxInBzDdSa5ZSoM9zRuh5sFsP236d@mailpile>
From: Reiner Karlsberg <karlsberg@softart-ge.com>
Message-ID: <1efc1c7c-d87e-753a-92d0-3fa5911805b9@softart-ge.com>
Date: Sun, 1 Sep 2019 07:12:40 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <vg58MWhCCD22S7ItxInBzDdSa5ZSoM9zRuh5sFsP236d@mailpile>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_211259_792586_DF934A99 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: reject sysupgrade of
 broken firmware images
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBuZWVkcyB0byBiZSBoYW5kbGVkIHZlcnkgY2FyZWZ1bGx5LCBub3QgdG8gYnJlYWsKYWN0
dWFsIHVzYWdlIG9mIC1GLgpJIGhhZCB0byB1c2UgLUYgY291cGxlIG9mIHRpbWVzLCB1c3VhbGx5
IHdoZW4gZG93bmdyYWRpbmcKaW5zdGFsbGVkIGZpcm13YXJlLCBidXQgd2l0aCBjaGFuZ2Ugb2Yg
bmFtZSBvdmVyIHRpbWUuClR5cGljYWwgZXhhbXBsZTogQ2hhbmdlIG9mIGltYWdlIG5hbWUgZm9y
IHRoZSB6YnQtd2U4MjYuCk5ldmVyIGFueSBwcm9ibGVtIHdpdGggdXNhZ2Ugb2YgLUYsIHRob3Vn
aC4KCkJ1dCBJIGhhZCBzZXZlcmFsIHByb2JsZW1zIHdpdGggbm9uLWNvbXBsZXRpb24gb2YKdmFs
aWQgc3lzdXBncmFkZSwgd2hpY2ggZXZlbiBsZWZ0IHRoZSBzeXN0ZW0gaW4gaW5jb25zaXN0ZW50
IHN0YXRlLAphcyB0aGUgIi1mIGtlZXAudGFyLmd6IiB3YXMgYXBwbGllZCwgYnV0IG5vdCB0aGUg
bmV3IGltYWdlIGl0c2VsZi4KT3IgKHNpbGVudGx5ID8pIG5vIHN5c3VwZ3JhZGUgZG9uZSwgYmVj
YXVzZSBvZiBtb3VudGVkIGJsb2NrIGRldmljZQpvciBhY3RpdmUgc3dhcCBmaWxlIG9uIGJsb2Nr
IGRldmljZSwgb3IgYWN0aXZlIHdpZmkgKD8pLgpXaGljaCB3YXMgYSBQSVRBIG9uIHJlbW90ZSBp
bnN0YWxsYXRpb25zLgoKUXVlc3Rpb246IEhvdyBhcmUgc3lzdXBncmFkZS1lcnJvcnMgcmVwb3J0
ZWQvdG8gYmUgaGFuZGxlZCwgYXMgdXN1YWxseSBhbHNvIGEgZmFpbGVkIHN5c3VwZ3JhZGUKdHJp
Z2dlcmVkIGEgcmVib290ID8KZG9jdW1lbnRhdGlvbiB2ZXJ5IHVuY2xlYXIgaGVyZSwgYXMgaXQg
bG9va3MgbGlrZSwgYmVoYXZpb3VyIGluIGNhc2Ugb2YgZXJycm8gY2hhbmdlZCBkdXJpbmcgdmVy
c2lvbnMgb2Ygb3BlbndydC4KCkJlc3Qgd291bGQgYmUgImF0b21pYyBzeXN1cGdyYWRlIiwgd2l0
aCBzdGFuZGFyZCBlcnJvci1jb2RlICgrMSkgb24gZXhpdCBpbnN0ZWFkIG9mIGV4cGVjdGVkIHJl
Ym9vdCBhZnRlciBzdWNjZXNzLgoKSSBhcHByZWNpYXRlIHRoZSBuZXcgd29yayBvbiBzeXN1cGdy
YWRlLCBidXQgSSBhbSBhIGJpdCBhZnJhaWQgb2YgcmVncmVzc2lvbnMuCgoKCkFtIDAxLjA5LjIw
MTkgdW0gMDE6MTQgc2NocmllYiBLYXJsIFBhbHNzb246Cj4gCj4gV2hhdCdzIHRoZSBwb2ludCBv
ZiAiZm9yY2UiIGlmIGl0IGRvZXNuJ3QgZm9yY2U/IEFyZSB3ZSBnb2luZyB0bwo+IGFkZCBhIHNl
Y29uZCAtRiB0byAicmVhbGx5IGZvcmNlIiA/IE9yIGlzIGl0IGdvaW5nIHRvIGJlICJvaCwgLUYK
PiBmYWlsZWQgZm9yIHNvbWUgbGFtZSByZWFzb24sIHNvIEknbGwgdXNlIG10ZCB3cml0ZSwgYW5k
IHN0aWxsCj4gY29tcGxhaW4gYW55d2F5Igo+IAo+IENoZWVycywKPiBLYXJsIFAKPiAKPiBSYWZh
xYIgTWnFgmVja2kgIDx6YWplYzVAZ21haWwuY29tPiB3cm90ZToKPj4gRnJvbTogUmFmYcWCIE1p
xYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+Pgo+PiBUaGlzIHVzZXMgcmVjZW50bHkgYWRkZWQg
InZhbGlkYXRlX2Zpcm13YXJlX2ltYWdlIiB0byB2YWxpZGF0ZQo+PiBwYXNzZWQgZmlybXdhcmUu
IElmIGl0IGhhcHBlbnMgdG8gYmUgaW52YWxpZCBhbmQgbWFya2VkIGFzCj4+IGltcG9zc2libGUg
dG8gZm9yY2UgdGhlbiBzeXN1cGdyYWRlIHNpbXBseSBleGl0cyB3aXRoIGFuIGVycm9yLgo+Pgo+
PiBUaGlzIGNoYW5nZSBpcyBuZWVkZWQgdG8gYXZvaWQgYnJpY2tpbmcgZGV2aWNlcyB3aXRoIHNv
bWUKPj4gdG90YWxseSBicm9rZW4gaW1hZ2VzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBSYWZhxYIg
TWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4+IC0tLQo+PiBUaGlzIHBhdGNoIGRlcGVuZHMg
b24gdGhlOgo+PiBbUEFUQ0ggcHJvY2RdIHN5c3RlbTogYWRkICJ2YWxpZGF0ZV9maXJtd2FyZV9p
bWFnZSIgdWJ1cyBtZXRob2QKPj4gLS0tCj4+ICAgc3lzdGVtLmMgfCAyNCArKysrKysrKysrKysr
KysrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvc3lzdGVtLmMgYi9zeXN0ZW0uYwo+PiBpbmRleCAzNWQ1YTIzLi43ZjQ5NzU4
IDEwMDY0NAo+PiAtLS0gYS9zeXN0ZW0uYwo+PiArKysgYi9zeXN0ZW0uYwo+PiBAQCAtNTA3LDcg
KzUwNywxOCBAQCBzdGF0aWMgaW50IHN5c3VwZ3JhZGUoc3RydWN0IHVidXNfY29udGV4dCAqY3R4
LCBzdHJ1Y3QgdWJ1c19vYmplY3QgKm9iaiwKPj4gICAJCSAgICAgIHN0cnVjdCB1YnVzX3JlcXVl
c3RfZGF0YSAqcmVxLCBjb25zdCBjaGFyICptZXRob2QsCj4+ICAgCQkgICAgICBzdHJ1Y3QgYmxv
Yl9hdHRyICptc2cpCj4+ICAgewo+PiArCWVudW0gewo+PiArCQlWQUxJREFUSU9OX1ZBTElELAo+
PiArCQlWQUxJREFUSU9OX0ZPUkNFQUJMRSwKPj4gKwkJX19WQUxJREFUSU9OX01BWAo+PiArCX07
Cj4+ICsJc3RhdGljIGNvbnN0IHN0cnVjdCBibG9ibXNnX3BvbGljeSB2YWxpZGF0aW9uX3BvbGlj
eVtfX1ZBTElEQVRJT05fTUFYXSA9IHsKPj4gKwkJW1ZBTElEQVRJT05fVkFMSURdID0geyAubmFt
ZSA9ICJ2YWxpZCIsIC50eXBlID0gQkxPQk1TR19UWVBFX0JPT0wgfSwKPj4gKwkJW1ZBTElEQVRJ
T05fRk9SQ0VBQkxFXSA9IHsgLm5hbWUgPSAiZm9yY2VhYmxlIiwgLnR5cGUgPSBCTE9CTVNHX1RZ
UEVfQk9PTCB9LAo+PiArCX07Cj4+ICsJc3RydWN0IGJsb2JfYXR0ciAqdmFsaWRhdGlvbltfX1ZB
TElEQVRJT05fTUFYXTsKPj4gICAJc3RydWN0IGJsb2JfYXR0ciAqdGJbX19TWVNVUEdSQURFX01B
WF07Cj4+ICsJYm9vbCB2YWxpZCwgZm9yY2VhYmxlOwo+PiAgIAo+PiAgIAlpZiAoIW1zZykKPj4g
ICAJCXJldHVybiBVQlVTX1NUQVRVU19JTlZBTElEX0FSR1VNRU5UOwo+PiBAQCAtNTE2LDYgKzUy
NywxOSBAQCBzdGF0aWMgaW50IHN5c3VwZ3JhZGUoc3RydWN0IHVidXNfY29udGV4dCAqY3R4LCBz
dHJ1Y3QgdWJ1c19vYmplY3QgKm9iaiwKPj4gICAJaWYgKCF0YltTWVNVUEdSQURFX1BBVEhdIHx8
ICF0YltTWVNVUEdSQURFX1BSRUZJWF0pCj4+ICAgCQlyZXR1cm4gVUJVU19TVEFUVVNfSU5WQUxJ
RF9BUkdVTUVOVDsKPj4gICAKPj4gKwlpZiAodmFsaWRhdGVfZmlybXdhcmVfaW1hZ2VfY2FsbChi
bG9ibXNnX2dldF9zdHJpbmcodGJbU1lTVVBHUkFERV9QQVRIXSkpKQo+PiArCQlyZXR1cm4gVUJV
U19TVEFUVVNfVU5LTk9XTl9FUlJPUjsKPj4gKwo+PiArCWJsb2Jtc2dfcGFyc2UodmFsaWRhdGlv
bl9wb2xpY3ksIF9fVkFMSURBVElPTl9NQVgsIHZhbGlkYXRpb24sIGJsb2JfZGF0YShiLmhlYWQp
LCBibG9iX2xlbihiLmhlYWQpKTsKPj4gKwo+PiArCXZhbGlkID0gdmFsaWRhdGlvbltWQUxJREFU
SU9OX1ZBTElEXSAmJiBibG9ibXNnX2dldF9ib29sKHZhbGlkYXRpb25bVkFMSURBVElPTl9WQUxJ
RF0pOwo+PiArCWZvcmNlYWJsZSA9IHZhbGlkYXRpb25bVkFMSURBVElPTl9GT1JDRUFCTEVdICYm
IGJsb2Jtc2dfZ2V0X2Jvb2wodmFsaWRhdGlvbltWQUxJREFUSU9OX0ZPUkNFQUJMRV0pOwo+PiAr
Cj4+ICsJaWYgKCF2YWxpZCAmJiAhZm9yY2VhYmxlKSB7Cj4+ICsJCWZwcmludGYoc3RkZXJyLCAi
RmlybXdhcmUgaW1hZ2UgaXMgYnJva2VuIGFuZCBjYW5ub3QgYmUgaW5zdGFsbGVkXG4iKTsKPj4g
KwkJcmV0dXJuIFVCVVNfU1RBVFVTX1VOS05PV05fRVJST1I7Cj4+ICsJfQo+PiArCj4+ICAgCXN5
c3VwZ3JhZGVfZXhlY191cGdyYWRlZChibG9ibXNnX2dldF9zdHJpbmcodGJbU1lTVVBHUkFERV9Q
UkVGSVhdKSwKPj4gICAJCQkJIGJsb2Jtc2dfZ2V0X3N0cmluZyh0YltTWVNVUEdSQURFX1BBVEhd
KSwKPj4gICAJCQkJIHRiW1NZU1VQR1JBREVfQ09NTUFORF0gPyBibG9ibXNnX2dldF9zdHJpbmco
dGJbU1lTVVBHUkFERV9DT01NQU5EXSkgOiBOVUxMLAo+PiAtLSAKPj4gMi4yMS4wCj4+Cj4+Cj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IG9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
Pj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwo+PiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
