Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1F7192B4F
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 15:38:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mi7f3b4GFBKbvaoUFRp/W9AJcfXQAl9bwJh7UJPeYKo=; b=Ho4iqW53JjidvS
	ZwwhMIBKsuIGEawpmcPPh68XaXdjECWhEpzoxPXYygT5Enxr11t9uYcYaaEnavGqrW66d4W+H5aZY
	reXAPNgz2g3bqtq4yYke6uIzuZZPQ7S1UxHmlxv80sUAQQbgHnRg/G29ANZAN+cyZBYMmMS1lSIW7
	qGBgFXgSKrZyLZ2depTOw+UdyAbclO06dGUkzJ+tdPu7jZLciHs9etBUzP+6wZ+SfU7AIv1Bhen4o
	QzfRLR7rYkEa4jFrXtiuxc87ahaleks0zoH0ELHVkyVs3mFKZEzr2g1+M1bl7EYKO6gvkmxASZgIp
	u0Aga6TAu+oUSrrngnsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH7Ac-0000Gp-ST; Wed, 25 Mar 2020 14:38:14 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH7AU-0000GJ-Jt
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 14:38:08 +0000
Received: (wp-smtpd smtp.tlen.pl 22264 invoked from network);
 25 Mar 2020 15:38:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1585147083; bh=ANT0aF4Vr37o76OWd7YNa46wMS44KWMqsC7c5EbRc8w=;
 h=Subject:To:Cc:From;
 b=YZZV7pECw2E2Kj/MTRqjnwCelSrngIZIuzfsQ+QqFbcN3znCg4TxtKUWbgkcFpNZE
 b3zidGvziYyDKeOsLUraQhHDPr8fTf4RVUW3Oz0+9YLMzKn3KUYmMWhfBXnLNP7s9C
 a9A2aTvGH2yv1du7f08MA2DIHe+1EwxOqtnK5WoA=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <russell@personaltelco.net>; 25 Mar 2020 15:38:03 +0100
To: Daniel Golle <daniel@makrotopia.org>, mail@adrianschmutzler.de
References: <20200325070657.528739-1-mail@aparcar.org>
 <004701d6029a$d6146bd0$823d4370$@adrianschmutzler.de>
 <20200325131850.GA2612@makrotopia.org>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <50954aaf-3a70-ed79-f780-0a4e035c79d3@o2.pl>
Date: Wed, 25 Mar 2020 15:38:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200325131850.GA2612@makrotopia.org>
Content-Language: en-US
X-WP-MailID: 397b0efd621fdc0e8d62ea46653039eb
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [4UN1]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_073806_820369_6C6E4611 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] x86: fix virutalbox squashfs images
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
Cc: openwrt-devel@lists.openwrt.org, russell@personaltelco.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgRGFuaWVsLgoKVyBkbml1IDI1LjAzLjIwMjAgb8KgMTQ6MTgsIERhbmllbCBHb2xsZSBwaXN6
ZToKPiBIaSwKPiAKPiBPbiBXZWQsIE1hciAyNSwgMjAyMCBhdCAxMjo0NTowOFBNICswMTAwLCBt
YWlsQGFkcmlhbnNjaG11dHpsZXIuZGUgd3JvdGU6Cj4+IEhpLAo+Pgo+Pj4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0KPj4+IEZyb206IG9wZW53cnQtZGV2ZWwgW21haWx0bzpvcGVud3J0LWRl
dmVsLWJvdW5jZXNAbGlzdHMub3BlbndydC5vcmddCj4+PiBPbiBCZWhhbGYgT2YgUGF1bCBTcG9v
cmVuCj4+PiBTZW50OiBNaXR0d29jaCwgMjUuIE3DpHJ6IDIwMjAgMDg6MDcKPj4+IFRvOiBvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4+PiBDYzogcnVzc2VsbEBwZXJzb25hbHRlbGNv
Lm5ldAo+Pj4gU3ViamVjdDogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSF0geDg2OiBmaXggdmlydXRh
bGJveCBzcXVhc2hmcyBpbWFnZXMKPj4+Cj4+PiBUaGUgcHJldmlvdXMgcmV3b3JrIG9mIHg4NiBp
bWFnZSBjcmVhdGlvbiBicm9rZSB0aGUgYHZkaWAgaW1hZ2VzLiB1c3NlbGwKPj4KPj4gdHlwbyBp
biB0aXRsZSBhbmQgbWlzc2luZyAiUiIgaW4gbmFtZSBkaXJlY3RseSBhYm92ZS4KPj4KPj4gQmVz
dAo+Pgo+PiBBZHJpYW4KPj4KPj4+IFNlbmlvciA8cnVzc2VsbEBwZXJzb25hbHRlbGNvLm5ldD4g
Y2FtZSB1cCB3aXRoIHRoaXMgcGF0Y2ggdG8gZml4IHRoZQo+Pj4gcGFkZGluZy4KPj4+Cj4+PiBU
ZXN0ZWQgd2l0aCB4ODYvNjQgd2l0aCBEb2NrZXIgKHNxdWFzaGZzKSwgcWVtdXN0YXJ0IChleHQ0
L3NxdWFzaGZzKSBhbmQKPj4+IHZpcnR1YWxib3ggKGV4dDQvc3F1YXNoZnMpLgo+Pj4KPj4+IFNp
Z25lZC1vZmYtYnk6IFBhdWwgU3Bvb3JlbiA8bWFpbEBhcGFyY2FyLm9yZz4KPj4+IC0tLQo+Pj4g
IHRhcmdldC9saW51eC94ODYvaW1hZ2UvTWFrZWZpbGUgfCAxMCArKysrKy0tLS0tCj4+PiAgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZm
IC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L3g4Ni9pbWFnZS9NYWtlZmlsZQo+Pj4gYi90YXJnZXQvbGlu
dXgveDg2L2ltYWdlL01ha2VmaWxlIGluZGV4IDgxYThmNzNlZmMuLjZkMTI0OTRmNTQgMTAwNjQ0
Cj4+PiAtLS0gYS90YXJnZXQvbGludXgveDg2L2ltYWdlL01ha2VmaWxlCj4+PiArKysgYi90YXJn
ZXQvbGludXgveDg2L2ltYWdlL01ha2VmaWxlCj4+PiBAQCAtNDcsNyArNDcsNyBAQCBCT09UT1BU
Uzo9JChjYWxsIHFzdHJpcCwkKENPTkZJR19HUlVCX0JPT1RPUFRTKSkKPj4+IGRlZmluZSBCdWls
ZC9jb21iaW5lZAo+Pj4gIAkkKENQKSAkKEtESVIpLyQoS0VSTkVMX05BTUUpICRALmJvb3QvYm9v
dC92bWxpbnV6Cj4+PiAgCS0kKENQKSAkKFNUQUdJTkdfRElSX1JPT1QpL2Jvb3QvLiAkQC5ib290
L2Jvb3QvCj4+PiAtCVBBRERJTkc9IiQoQ09ORklHX1RBUkdFVF9JTUFHRVNfUEFEKSIKPj4+IFNJ
R05BVFVSRT0iJChJTUdfUEFSVF9TSUdOQVRVUkUpIgo+Pj4gJChTQ1JJUFRfRElSKS9nZW5faW1h
Z2VfZ2VuZXJpYy5zaCBcCj4+PiArCVBBRERJTkc9IjEiIFNJR05BVFVSRT0iJChJTUdfUEFSVF9T
SUdOQVRVUkUpIgo+IAo+IEVuYWJsaW5nIHBhZGRpbmcgdW5jb25kaXRpb25hbGx5IHdhc3RlcyBz
cGFjZSBvbiB0YXJnZXRzIHdoaWNoIGRvIG5vdAo+IG5lZWQgaXQgKGllLiBzbWFsbCBzaXplIE5P
UiBmbGFzaCBkZXZpY2VzKS4KClRoaXMgc2NyaXB0IGlzIGZvciBvbmx5IHlvdXIgdHlwaWNhbCBi
bG9jayBkZXZpY2VzLCBubyBNVEQgaW52b2x2ZWQuCgo+IExvb2tzIGxpa2UgeW91IHNob3VsZCBy
YXRoZXIgZml4IHRoZSBsb2dpYyBzZXR0aW5nCj4gQ09ORklHX1RBUkdFVF9JTUFHRV9QQUQuCgpU
aGlzIGhhcyBiZWVuIHJlbW92ZWQgd2l0aCBodHRwczovL2dpdC5vcGVud3J0Lm9yZy9kMDNlZjk3
YzFiNTdiMmI1NTg4MTE1ZDNiN2M3MzU1Mzk5ODc0YWEzLAphbmQgdGhpcyBvcHRpb24gaGVyZSB3
YXMgcmViYXNlIGlzc3VlLgoKPiAKPiAKPj4+ICskKFNDUklQVF9ESVIpL2dlbl9pbWFnZV9nZW5l
cmljLnNoIFwKPj4+ICAJCSRAIFwKPj4+ICAJCSQoQ09ORklHX1RBUkdFVF9LRVJORUxfUEFSVFNJ
WkUpICRALmJvb3QgXAo+Pj4gIAkJJChDT05GSUdfVEFSR0VUX1JPT1RGU19QQVJUU0laRSkgJChJ
TUFHRV9ST09URlMpIFwKPj4+IEBAIC05NSwxMCArOTUsMTAgQEAgZW5kZWYgIERFVklDRV9WQVJT
ICs9IEdSVUIyX1ZBUklBTlQgIGRlZmluZQo+Pj4gRGV2aWNlL0RlZmF1bHQKPj4+ICAgIEFSVElG
QUNUL2ltYWdlLmlzbyA6PSBncnViLWNvbmZpZyBpc28gfCBpc28KPj4+IC0gIElNQUdFL2NvbWJp
bmVkLmltZyA6PSBhcHBlbmQtcm9vdGZzIHwgcGFkLWV4dHJhIDEyOGsgfCBncnViLWNvbmZpZyBw
YyB8Cj4+PiBjb21iaW5lZCB8IGdydWItaW5zdGFsbAo+Pj4gLSAgSU1BR0UvY29tYmluZWQuaW1n
Lmd6IDo9IGFwcGVuZC1yb290ZnMgfCBwYWQtZXh0cmEgMTI4ayB8IGdydWItY29uZmlnCj4+PiBw
YyB8IGNvbWJpbmVkIHwgZ3J1Yi1pbnN0YWxsIHwgZ3ppcAo+Pj4gLSAgSU1BR0UvY29tYmluZWQu
dmRpIDo9IGFwcGVuZC1yb290ZnMgfCBwYWQtZXh0cmEgMTI4ayB8IGdydWItY29uZmlnIHBjIHwK
Pj4+IGNvbWJpbmVkIHwgZ3J1Yi1pbnN0YWxsIHwgcWVtdS1pbWFnZSB2ZGkKPj4+IC0gIElNQUdF
L2NvbWJpbmVkLnZtZGsgOj0gYXBwZW5kLXJvb3RmcyB8IHBhZC1leHRyYSAxMjhrIHwgZ3J1Yi1j
b25maWcgcGMKPj4+IHwgY29tYmluZWQgfCBncnViLWluc3RhbGwgfCBxZW11LWltYWdlIHZtZGsK
Pj4+ICsgIElNQUdFL2NvbWJpbmVkLmltZyA6PSBncnViLWNvbmZpZyBwYyB8IGNvbWJpbmVkIHwg
Z3J1Yi1pbnN0YWxsCj4+PiArIElNQUdFL2NvbWJpbmVkLmltZy5neiA6PSBncnViLWNvbmZpZyBw
YyB8IGNvbWJpbmVkIHwgZ3J1Yi1pbnN0YWxsIHwKPj4+ICsgZ3ppcCAgSU1BR0UvY29tYmluZWQu
dmRpIDo9IGdydWItY29uZmlnIHBjIHwgY29tYmluZWQgfCBncnViLWluc3RhbGwgfAo+Pj4gKyBx
ZW11LWltYWdlIHZkaSAgSU1BR0UvY29tYmluZWQudm1kayA6PSBncnViLWNvbmZpZyBwYyB8IGNv
bWJpbmVkIHwKPj4+ICsgZ3J1Yi1pbnN0YWxsIHwgcWVtdS1pbWFnZSB2bWRrCj4+PiAgICBpZmVx
ICgkKENPTkZJR19UQVJHRVRfSU1BR0VTX0daSVApLHkpCj4+PiAgICAgIElNQUdFUyA6PSBjb21i
aW5lZC5pbWcuZ3oKPj4+ICAgIGVsc2UKPj4+IC0tCj4+PiAyLjI1LjEKPj4+Cj4+Pgo+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IG9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cj4+PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4+
PiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo+IAo+IAo+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+PiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+PiBvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCj4+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo+IAoKLS0gClRNTgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
