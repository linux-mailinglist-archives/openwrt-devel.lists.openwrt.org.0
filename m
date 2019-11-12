Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8AAF8A53
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 09:16:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iNqMWzmqtY83zexyFkqNqNpUaC/QeWzr1FTBL6bKm6g=; b=XYvMXgTljf+oQm
	3APqNHzmPzzyI6SkmEN+fRY/Po9X5nc84xD+beKATF/YFAJWAJNt8OWTBn9/mUr2eIXH/DyymUh8X
	gnz/ikUsPH4n6vTOLxLN0JbOICw+dAhr8LUcDTYcqRYfU6c/tlGwnc8ypHtGpSakbpsfJ1K1bYvfz
	ZDJyjRb68Nb4Nqd+hcs7qPRyRdg+RYHE7/PatRZuxD7nwXNe8Euk6fxFv9eMEgCMoxwsbz6RySM9X
	uEhIbIz5b5plBH5xrRq6Kbwyy3DhhTrfHS+FkUP2OBLV8n1JENEvBYKtIFz/4lent4Jp+gPFBz66o
	LB8SR4YttlbfKaZYLhJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURLt-0001lV-Qu; Tue, 12 Nov 2019 08:16:41 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURLn-0001l8-05
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 08:16:36 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 862783FD7;
 Tue, 12 Nov 2019 09:16:31 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 50377f36;
 Tue, 12 Nov 2019 09:16:21 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 12 Nov 2019 09:16:25 +0100
Message-Id: <20191112081625.27695-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_001635_344062_F774E43B 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] build: make GCC version 6+ minimal host
 build requirement
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q3VycmVudGx5IG1pbmltYWwgR05VIHN1cHBvcnRlZCBHQ0MgdmVyc2lvbiBpcyA3IChmcm9tIE1h
eSAyLCAyMDE3KSwgYnVpbGRib3RzCmFyZSB1c2luZyBkZWZhdWx0IEdDQyB2ZXJzaW9uIDYgb24g
RGViaWFuIDkgKG9sZCBzdGFibGUpLCBjdXJyZW50IERlYmlhbgpzdGFibGUgMTAgaGFzIEdDQyB2
ZXJzaW9uIDguCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgot
LS0KCldoaWxlIGFkZGluZyBDSSBzdXBwb3J0IGluIEMgYmFzZWQgcHJvamVjdHMsIEkndmUgc3Rh
cnRlZCBhZGRpbmcgLVdleHRyYSBhcwp3ZWxsLCB3aGljaCBzZWVtcyB0byB3b3JrIGp1c3QgZmlu
ZSBmb3IgZ2NjNissIGJ1dCBpdCdzIGFwcGFyZW50bHkgY2F1c2luZwppc3N1ZXMgd2l0aCBvbGRl
ciBHQ0NzIGxpa2UgZm9yIGV4YW1wbGUgZ2NjIDQuOC41WzFdIG9uIENlbnRPUyA3LgoKQWx0aG91
Z2ggaXQncyBjZXJ0YWlubHkgcG9zc2libGUgdG8gZml4IHRob3NlIGlzc3VlcyBhbmQgbWFrZSBn
Y2MgNCB1c2FibGUsIEkKdGhpbmssIHRoYXQgaXQncyBub3Qgd29ydGggdGhlIGFkZGl0aW9uYWwg
ZWZmb3J0IGFuZCByZXNvdXJjZXMgYW55bW9yZS4KCjEuIGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVu
d3J0L29wZW53cnQvY29tbWl0LzRiYThmN2IxZWYxZTRjMDYwNzE4NWE0MWMwNmI1MTkyOGM2MjVk
OGIKCiBSRUFETUUgICAgICAgICAgICAgICAgICB8ICAyICstCiBpbmNsdWRlL3ByZXJlcS1idWls
ZC5tayB8IDE4ICsrKystLS0tLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL1JFQURNRSBiL1JFQURNRQppbmRl
eCBjODY3YzFmYTRkYTguLjZkMTFkZDExODhmZiAxMDA2NDQKLS0tIGEvUkVBRE1FCisrKyBiL1JF
QURNRQpAQCAtMTEsNyArMTEsNyBAQCBUbyBidWlsZCB5b3VyIG93biBmaXJtd2FyZSB5b3UgbmVl
ZCBhIExpbnV4LCBCU0Qgb3IgTWFjT1NYIHN5c3RlbSAoY2FzZQogc2Vuc2l0aXZlIGZpbGVzeXN0
ZW0gcmVxdWlyZWQpLiBDeWd3aW4gaXMgdW5zdXBwb3J0ZWQgYmVjYXVzZSBvZiB0aGUgbGFjawog
b2YgYSBjYXNlIHNlbnNpdGl2ZSBmaWxlIHN5c3RlbS4KIAotWW91IG5lZWQgZ2NjLCBiaW51dGls
cywgYnppcDIsIGZsZXgsIHB5dGhvbjMuNSssIHBlcmwsIG1ha2UsIGZpbmQsIGdyZXAsIGRpZmYs
CitZb3UgbmVlZCBnY2M2KywgYmludXRpbHMsIGJ6aXAyLCBmbGV4LCBweXRob24zLjUrLCBwZXJs
LCBtYWtlLCBmaW5kLCBncmVwLCBkaWZmLAogdW56aXAsIGdhd2ssIGdldG9wdCwgc3VidmVyc2lv
biwgbGliei1kZXYgYW5kIGxpYmMgaGVhZGVycyBpbnN0YWxsZWQuCiAKIDEuIFJ1biAiLi9zY3Jp
cHRzL2ZlZWRzIHVwZGF0ZSAtYSIgdG8gb2J0YWluIGFsbCB0aGUgbGF0ZXN0IHBhY2thZ2UgZGVm
aW5pdGlvbnMKZGlmZiAtLWdpdCBhL2luY2x1ZGUvcHJlcmVxLWJ1aWxkLm1rIGIvaW5jbHVkZS9w
cmVyZXEtYnVpbGQubWsKaW5kZXggNGM1OTkxMDA1NjM0Li41OGNiYzA2NzhmYTEgMTAwNjQ0Ci0t
LSBhL2luY2x1ZGUvcHJlcmVxLWJ1aWxkLm1rCisrKyBiL2luY2x1ZGUvcHJlcmVxLWJ1aWxkLm1r
CkBAIC0yNywxMiArMjcsNyBAQCAkKGV2YWwgJChjYWxsIFRlc3RIb3N0Q29tbWFuZCxwcm9wZXIt
dW1hc2ssIFwKIAl1bWFzayB8IGdyZXAgLXhFIDA/MFswMTJdWzAxMl0pKQogCiAkKGV2YWwgJChj
YWxsIFNldHVwSG9zdENvbW1hbmQsZ2NjLCBcCi0JUGxlYXNlIGluc3RhbGwgdGhlIEdOVSBDIENv
bXBpbGVyIChnY2MpIDQuOCBvciBsYXRlciwgXAotCSQoQ0MpIC1kdW1wdmVyc2lvbiB8IGdyZXAg
LUUgJ14oNFwuWzgtOV18WzUtOV1cLj8pJywgXAotCWdjYyAtZHVtcHZlcnNpb24gfCBncmVwIC1F
ICdeKDRcLls4LTldfFs1LTldXC4/KScsIFwKLQlnY2M0OCAtLXZlcnNpb24gfCBncmVwIGdjYywg
XAotCWdjYzQ5IC0tdmVyc2lvbiB8IGdyZXAgZ2NjLCBcCi0JZ2NjNSAtLXZlcnNpb24gfCBncmVw
IGdjYywgXAorCVBsZWFzZSBpbnN0YWxsIHRoZSBHTlUgQyBDb21waWxlciAoZ2NjKSA2IG9yIGxh
dGVyLCBcCiAJZ2NjNiAtLXZlcnNpb24gfCBncmVwIGdjYywgXAogCWdjYzcgLS12ZXJzaW9uIHwg
Z3JlcCBnY2MsIFwKIAlnY2M4IC0tdmVyc2lvbiB8IGdyZXAgZ2NjLCBcCkBAIC00MCwxOCArMzUs
MTMgQEAgJChldmFsICQoY2FsbCBTZXR1cEhvc3RDb21tYW5kLGdjYywgXAogCWdjYyAtLXZlcnNp
b24gfCBncmVwIC1FICdBcHBsZS4oTExWTXxjbGFuZyknICkpCiAKICQoZXZhbCAkKGNhbGwgVGVz
dEhvc3RDb21tYW5kLHdvcmtpbmctZ2NjLCBcCi0JXG5QbGVhc2UgcmVpbnN0YWxsIHRoZSBHTlUg
QyBDb21waWxlciAoNC44IG9yIGxhdGVyKSAtIFwKKwlcblBsZWFzZSByZWluc3RhbGwgdGhlIEdO
VSBDIENvbXBpbGVyICg2IG9yIGxhdGVyKSAtIFwKIAlpdCBhcHBlYXJzIHRvIGJlIGJyb2tlbiwg
XAogCWVjaG8gJ2ludCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJndikgeyByZXR1cm4gMDsgfScg
fCBcCiAJCWdjYyAteCBjIC1vICQoVE1QX0RJUikvYS5vdXQgLSkpCiAKICQoZXZhbCAkKGNhbGwg
U2V0dXBIb3N0Q29tbWFuZCxnKyssIFwKLQlQbGVhc2UgaW5zdGFsbCB0aGUgR05VIEMrKyBDb21w
aWxlciAoZysrKSA0Ljggb3IgbGF0ZXIsIFwKLQkkKENYWCkgLWR1bXB2ZXJzaW9uIHwgZ3JlcCAt
RSAnXig0XC5bOC05XXxbNS05XVwuPyknLCBcCi0JZysrIC1kdW1wdmVyc2lvbiB8IGdyZXAgLUUg
J14oNFwuWzgtOV18WzUtOV1cLj8pJywgXAotCWcrKzQ4IC0tdmVyc2lvbiB8IGdyZXAgZysrLCBc
Ci0JZysrNDkgLS12ZXJzaW9uIHwgZ3JlcCBnKyssIFwKLQlnKys1IC0tdmVyc2lvbiB8IGdyZXAg
ZysrLCBcCisJUGxlYXNlIGluc3RhbGwgdGhlIEdOVSBDKysgQ29tcGlsZXIgKGcrKykgNiBvciBs
YXRlciwgXAogCWcrKzYgLS12ZXJzaW9uIHwgZ3JlcCBnKyssIFwKIAlnKys3IC0tdmVyc2lvbiB8
IGdyZXAgZysrLCBcCiAJZysrOCAtLXZlcnNpb24gfCBncmVwIGcrKywgXApAQCAtNTksNyArNDks
NyBAQCAkKGV2YWwgJChjYWxsIFNldHVwSG9zdENvbW1hbmQsZysrLCBcCiAJZysrIC0tdmVyc2lv
biB8IGdyZXAgLUUgJ0FwcGxlLihMTFZNfGNsYW5nKScgKSkKIAogJChldmFsICQoY2FsbCBUZXN0
SG9zdENvbW1hbmQsd29ya2luZy1nKyssIFwKLQlcblBsZWFzZSByZWluc3RhbGwgdGhlIEdOVSBD
KysgQ29tcGlsZXIgKDQuOCBvciBsYXRlcikgLSBcCisJXG5QbGVhc2UgcmVpbnN0YWxsIHRoZSBH
TlUgQysrIENvbXBpbGVyICg2IG9yIGxhdGVyKSAtIFwKIAlpdCBhcHBlYXJzIHRvIGJlIGJyb2tl
biwgXAogCWVjaG8gJ2ludCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJndikgeyByZXR1cm4gMDsg
fScgfCBcCiAJCWcrKyAteCBjKysgLW8gJChUTVBfRElSKS9hLm91dCAtIC1sc3RkYysrICYmIFwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
