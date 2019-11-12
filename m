Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C13DCF9A25
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 21:02:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSZUEgfNHpulfsobaTTQNqbL/jLYDzJAIxSs2T/MOck=; b=D12C+ieaUxO6xi
	YFtgeBc1Yu+BNvOBiLpO5CqvOXJ/uaNCkMRuL/0pj7GgS6H5D3EPQi1227u03xWsRQCoXFiZQZaax
	zfyt8ztayK6uqgF9GculUVhjlmwVlS0z3GsCIbZZCYGhOX4IvBdaoV6kM9qPyEbOrHccHOwwBeutl
	WTQxnnZdt8ecRoBNATdO5pZVcBJBRvfqA/fYp+Q8HrDCagqDrnp42oqAti9J41BgjvHl0DScXHECb
	wL2yQYbfmc8/SMCElMXJXgDOf4BWOloC0IbSWAQb2UZTwL4TyaEmlt8oytr3LEuELZ9RH1LOBhuAo
	BX4BfhHM3Zn0YPYyTwOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUcMP-0003m4-As; Tue, 12 Nov 2019 20:01:57 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUcMH-0003lZ-MQ
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 20:01:51 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9E5513AF2;
 Tue, 12 Nov 2019 21:01:46 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id d9b2c42f;
 Tue, 12 Nov 2019 21:01:36 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 12 Nov 2019 21:01:29 +0100
Message-Id: <20191112200129.19396-1-ynezz@true.cz>
In-Reply-To: <CAOdf3gpV3Ubg5fJc=rZW5z8M92ymmTZZXSU-E=VqjWfvSnmpWA@mail.gmail.com>
References: <CAOdf3gpV3Ubg5fJc=rZW5z8M92ymmTZZXSU-E=VqjWfvSnmpWA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_120150_033970_629EAB22 
X-CRM114-Status: UNSURE (   7.58  )
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
Subject: [OpenWrt-Devel] [PATCH v2] build: make GCC version 6+ minimal host
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
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q3VycmVudGx5IG1pbmltYWwgR05VIHN1cHBvcnRlZCBHQ0MgdmVyc2lvbiBpcyA3IChmcm9tIE1h
eSAyLCAyMDE3KSwKYnVpbGRib3RzIGFyZSB1c2luZyBkZWZhdWx0IEdDQyB2ZXJzaW9uIDYgb24g
RGViaWFuIDkgKG9sZCBzdGFibGUpLApjdXJyZW50IERlYmlhbiBzdGFibGUgaGFzIEdDQyB2ZXJz
aW9uIDguMy4wLgoKQ2M6IEV0aWVubmUgQ2hhbXBldGllciA8Y2hhbXBldGllci5ldGllbm5lQGdt
YWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0t
CiB2MjogZml4IHJlZ2V4cHMgKGNoYW1wdGFyKQoKIFJFQURNRSAgICAgICAgICAgICAgICAgIHwg
IDIgKy0KIGluY2x1ZGUvcHJlcmVxLWJ1aWxkLm1rIHwgMjIgKysrKysrKystLS0tLS0tLS0tLS0t
LQogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL1JFQURNRSBiL1JFQURNRQppbmRleCBjODY3YzFmYTRkYTguLjZkMTFkZDExODhm
ZiAxMDA2NDQKLS0tIGEvUkVBRE1FCisrKyBiL1JFQURNRQpAQCAtMTEsNyArMTEsNyBAQCBUbyBi
dWlsZCB5b3VyIG93biBmaXJtd2FyZSB5b3UgbmVlZCBhIExpbnV4LCBCU0Qgb3IgTWFjT1NYIHN5
c3RlbSAoY2FzZQogc2Vuc2l0aXZlIGZpbGVzeXN0ZW0gcmVxdWlyZWQpLiBDeWd3aW4gaXMgdW5z
dXBwb3J0ZWQgYmVjYXVzZSBvZiB0aGUgbGFjawogb2YgYSBjYXNlIHNlbnNpdGl2ZSBmaWxlIHN5
c3RlbS4KIAotWW91IG5lZWQgZ2NjLCBiaW51dGlscywgYnppcDIsIGZsZXgsIHB5dGhvbjMuNSss
IHBlcmwsIG1ha2UsIGZpbmQsIGdyZXAsIGRpZmYsCitZb3UgbmVlZCBnY2M2KywgYmludXRpbHMs
IGJ6aXAyLCBmbGV4LCBweXRob24zLjUrLCBwZXJsLCBtYWtlLCBmaW5kLCBncmVwLCBkaWZmLAog
dW56aXAsIGdhd2ssIGdldG9wdCwgc3VidmVyc2lvbiwgbGliei1kZXYgYW5kIGxpYmMgaGVhZGVy
cyBpbnN0YWxsZWQuCiAKIDEuIFJ1biAiLi9zY3JpcHRzL2ZlZWRzIHVwZGF0ZSAtYSIgdG8gb2J0
YWluIGFsbCB0aGUgbGF0ZXN0IHBhY2thZ2UgZGVmaW5pdGlvbnMKZGlmZiAtLWdpdCBhL2luY2x1
ZGUvcHJlcmVxLWJ1aWxkLm1rIGIvaW5jbHVkZS9wcmVyZXEtYnVpbGQubWsKaW5kZXggNGM1OTkx
MDA1NjM0Li4yYTIyNWZjMjUyOTggMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvcHJlcmVxLWJ1aWxkLm1r
CisrKyBiL2luY2x1ZGUvcHJlcmVxLWJ1aWxkLm1rCkBAIC0yNywxMiArMjcsOSBAQCAkKGV2YWwg
JChjYWxsIFRlc3RIb3N0Q29tbWFuZCxwcm9wZXItdW1hc2ssIFwKIAl1bWFzayB8IGdyZXAgLXhF
IDA/MFswMTJdWzAxMl0pKQogCiAkKGV2YWwgJChjYWxsIFNldHVwSG9zdENvbW1hbmQsZ2NjLCBc
Ci0JUGxlYXNlIGluc3RhbGwgdGhlIEdOVSBDIENvbXBpbGVyIChnY2MpIDQuOCBvciBsYXRlciwg
XAotCSQoQ0MpIC1kdW1wdmVyc2lvbiB8IGdyZXAgLUUgJ14oNFwuWzgtOV18WzUtOV1cLj8pJywg
XAotCWdjYyAtZHVtcHZlcnNpb24gfCBncmVwIC1FICdeKDRcLls4LTldfFs1LTldXC4/KScsIFwK
LQlnY2M0OCAtLXZlcnNpb24gfCBncmVwIGdjYywgXAotCWdjYzQ5IC0tdmVyc2lvbiB8IGdyZXAg
Z2NjLCBcCi0JZ2NjNSAtLXZlcnNpb24gfCBncmVwIGdjYywgXAorCVBsZWFzZSBpbnN0YWxsIHRo
ZSBHTlUgQyBDb21waWxlciAoZ2NjKSA2IG9yIGxhdGVyLCBcCisJJChDQykgLWR1bXB2ZXJzaW9u
IHwgZ3JlcCAtRSAnXihbNi05XVwuP3xbMC05XXsyfVwuPyknLCBcCisJZ2NjIC1kdW1wdmVyc2lv
biB8IGdyZXAgLUUgJ14oWzYtOV1cLj98WzAtOV17Mn1cLj8pJywgXAogCWdjYzYgLS12ZXJzaW9u
IHwgZ3JlcCBnY2MsIFwKIAlnY2M3IC0tdmVyc2lvbiB8IGdyZXAgZ2NjLCBcCiAJZ2NjOCAtLXZl
cnNpb24gfCBncmVwIGdjYywgXApAQCAtNDAsMTggKzM3LDE1IEBAICQoZXZhbCAkKGNhbGwgU2V0
dXBIb3N0Q29tbWFuZCxnY2MsIFwKIAlnY2MgLS12ZXJzaW9uIHwgZ3JlcCAtRSAnQXBwbGUuKExM
Vk18Y2xhbmcpJyApKQogCiAkKGV2YWwgJChjYWxsIFRlc3RIb3N0Q29tbWFuZCx3b3JraW5nLWdj
YywgXAotCVxuUGxlYXNlIHJlaW5zdGFsbCB0aGUgR05VIEMgQ29tcGlsZXIgKDQuOCBvciBsYXRl
cikgLSBcCisJXG5QbGVhc2UgcmVpbnN0YWxsIHRoZSBHTlUgQyBDb21waWxlciAoNiBvciBsYXRl
cikgLSBcCiAJaXQgYXBwZWFycyB0byBiZSBicm9rZW4sIFwKIAllY2hvICdpbnQgbWFpbihpbnQg
YXJnYywgY2hhciAqKmFyZ3YpIHsgcmV0dXJuIDA7IH0nIHwgXAogCQlnY2MgLXggYyAtbyAkKFRN
UF9ESVIpL2Eub3V0IC0pKQogCiAkKGV2YWwgJChjYWxsIFNldHVwSG9zdENvbW1hbmQsZysrLCBc
Ci0JUGxlYXNlIGluc3RhbGwgdGhlIEdOVSBDKysgQ29tcGlsZXIgKGcrKykgNC44IG9yIGxhdGVy
LCBcCi0JJChDWFgpIC1kdW1wdmVyc2lvbiB8IGdyZXAgLUUgJ14oNFwuWzgtOV18WzUtOV1cLj8p
JywgXAotCWcrKyAtZHVtcHZlcnNpb24gfCBncmVwIC1FICdeKDRcLls4LTldfFs1LTldXC4/KScs
IFwKLQlnKys0OCAtLXZlcnNpb24gfCBncmVwIGcrKywgXAotCWcrKzQ5IC0tdmVyc2lvbiB8IGdy
ZXAgZysrLCBcCi0JZysrNSAtLXZlcnNpb24gfCBncmVwIGcrKywgXAorCVBsZWFzZSBpbnN0YWxs
IHRoZSBHTlUgQysrIENvbXBpbGVyIChnKyspIDYgb3IgbGF0ZXIsIFwKKwkkKENYWCkgLWR1bXB2
ZXJzaW9uIHwgZ3JlcCAtRSAnXihbNi05XVwuP3xbMC05XXsyfVwuPyknLCBcCisJZysrIC1kdW1w
dmVyc2lvbiB8IGdyZXAgLUUgJ14oWzYtOV1cLj98WzAtOV17Mn1cLj8pJywgXAogCWcrKzYgLS12
ZXJzaW9uIHwgZ3JlcCBnKyssIFwKIAlnKys3IC0tdmVyc2lvbiB8IGdyZXAgZysrLCBcCiAJZysr
OCAtLXZlcnNpb24gfCBncmVwIGcrKywgXApAQCAtNTksNyArNTMsNyBAQCAkKGV2YWwgJChjYWxs
IFNldHVwSG9zdENvbW1hbmQsZysrLCBcCiAJZysrIC0tdmVyc2lvbiB8IGdyZXAgLUUgJ0FwcGxl
LihMTFZNfGNsYW5nKScgKSkKIAogJChldmFsICQoY2FsbCBUZXN0SG9zdENvbW1hbmQsd29ya2lu
Zy1nKyssIFwKLQlcblBsZWFzZSByZWluc3RhbGwgdGhlIEdOVSBDKysgQ29tcGlsZXIgKDQuOCBv
ciBsYXRlcikgLSBcCisJXG5QbGVhc2UgcmVpbnN0YWxsIHRoZSBHTlUgQysrIENvbXBpbGVyICg2
IG9yIGxhdGVyKSAtIFwKIAlpdCBhcHBlYXJzIHRvIGJlIGJyb2tlbiwgXAogCWVjaG8gJ2ludCBt
YWluKGludCBhcmdjLCBjaGFyICoqYXJndikgeyByZXR1cm4gMDsgfScgfCBcCiAJCWcrKyAteCBj
KysgLW8gJChUTVBfRElSKS9hLm91dCAtIC1sc3RkYysrICYmIFwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
