Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF9D1BAAFD
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 19:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slosBx5gxWMo2aUEirXv+gkFQbOpN58b696s4Tceyjw=; b=UEyE6mYSU6XaPp
	XGZAs1B0mPZMMrtRq+ZnpKYdCweYJ81txeSIBklkCguH5O0xZu729UMWgKRL59QN9najhgaYxggV4
	VkuAz5tq6aew9HgsMLGRdftfAhhVlWY7WbMmahQqGnrbH4No5u3fBx41wEomniOKGJnaIcws0l8fM
	qLmqepzA8moK+6XesZeGtqpG5x60emNy7etnovKrVpAdyJOjc2HN8o1YtQ73Vb5RlCMzJIfCjhCfP
	mef+NZUQMaseia6H11ejoIfYysTvJBf0fKKuqJEtRk5cWJI0lrA7cxIu12/8lp/EbSa6Yms+HVuDP
	xixMMG7njKN+z0w79tIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7Ol-0005zf-J5; Mon, 27 Apr 2020 17:18:27 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7Oc-0005yD-9u
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 17:18:19 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 35813240003;
 Mon, 27 Apr 2020 17:18:12 +0000 (UTC)
Date: Mon, 27 Apr 2020 19:18:11 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <20200427191811.3f32cebc@xps13>
In-Reply-To: <20200419125140.1307309-6-boris.brezillon@collabora.com>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
 <20200419125140.1307309-6-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_101818_610178_EFB2269C 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH 5/9] mtd: rawnand: bcm47xx: Implement
 the exec_op() interface
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 linux-mtd@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBTdW4sIDE5IEFwcgoyMDIwIDE0OjUxOjM2ICswMjAwOgoKPiBJbXBsZW1lbnQg
dGhlIGV4ZWNfb3AoKSBpbnRlcmZhY2Ugc28gd2UgY2FuIGdldCByaWQgb2YgdGhlIGNvbnZvbHV0
ZWQKPiBjbWRmdW5jKCkgaW1wbGVtZW50YXRpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogQm9yaXMg
QnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4KPiAtLS0KPiBUaGlzIGlz
IGJhc2VkIG9uIG15IHVuZGVyc3RhbmRpbmcgb2YgaG93IHRoaXMgY29udHJvbGxlciB3b3Jrcywg
YW5kIEkKPiB0aGluayBpdCBjb3ZlcnMgYWxsIHRoZSB1c2UgY2FzZXMgY292ZXJlZCBieSB0aGUg
Y3VzdG9tIGNtZGZ1bmMoKQo+IGltcGxlbWVudGF0aW9uLiBJIG1pZ2h0IGJlIHdyb25nIG9mIGNv
dXJzZSwgc28gaXQnZCBiZSBncmVhdCB0byBoYXZlCj4gc29tZW9uZSB0ZXN0IG9uIHJlYWwgSFcu
Cj4gLS0tCj4gIC4uLi9uYW5kL3Jhdy9iY200N3h4bmZsYXNoL2JjbTQ3eHhuZmxhc2guaCAgICB8
ICAgMSArCj4gIC4uLi9tdGQvbmFuZC9yYXcvYmNtNDd4eG5mbGFzaC9vcHNfYmNtNDcwNi5jICB8
IDE1MCArKysrKysrKysrKysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNTEgaW5zZXJ0aW9u
cygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9iY200N3h4bmZsYXNo
L2JjbTQ3eHhuZmxhc2guaCBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JjbTQ3eHhuZmxhc2gvYmNt
NDd4eG5mbGFzaC5oCj4gaW5kZXggMjAxYjliYWE1MmEwLi4wMGQwOTc0YjczY2IgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvYmNtNDd4eG5mbGFzaC9iY200N3h4bmZsYXNoLmgK
PiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9iY200N3h4bmZsYXNoL2JjbTQ3eHhuZmxhc2gu
aAo+IEBAIC0xMCw2ICsxMCw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9tdGQvcmF3bmFuZC5oPgo+
ICAKPiAgc3RydWN0IGJjbTQ3eHhuZmxhc2ggewo+ICsJc3RydWN0IG5hbmRfY29udHJvbGxlciBi
YXNlOwo+ICAJc3RydWN0IGJjbWFfZHJ2X2NjICpjYzsKPiAgCj4gIAlzdHJ1Y3QgbmFuZF9jaGlw
IG5hbmRfY2hpcDsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvYmNtNDd4eG5m
bGFzaC9vcHNfYmNtNDcwNi5jIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvYmNtNDd4eG5mbGFzaC9v
cHNfYmNtNDcwNi5jCj4gaW5kZXggZmJiN2FjZWJjOGY3Li4xODRmNzhiM2Q0NWEgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvYmNtNDd4eG5mbGFzaC9vcHNfYmNtNDcwNi5jCj4g
KysrIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvYmNtNDd4eG5mbGFzaC9vcHNfYmNtNDcwNi5jCj4g
QEAgLTM4Miw2ICszODIsMTUzIEBAIHN0YXRpYyB2b2lkIGJjbTQ3eHhuZmxhc2hfb3BzX2JjbTQ3
MDZfd3JpdGVfYnVmKHN0cnVjdCBuYW5kX2NoaXAgKm5hbmRfY2hpcCwKPiAgCXByX2VycigiSW52
YWxpZCBjb21tYW5kIGZvciBidWYgd3JpdGU6IDB4JVhcbiIsIGI0N24tPmN1cnJfY29tbWFuZCk7
Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQKPiArYmNtNDd4eG5mbGFzaF9vcHNfYmNtNDcwNl9leGVj
X2NtZF9hZGRyKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsCj4gKwkJCQkJY29uc3Qgc3RydWN0IG5h
bmRfc3Vib3AgKnN1Ym9wKQo+ICt7Cj4gKwlzdHJ1Y3QgYmNtNDd4eG5mbGFzaCAqYjQ3biA9IG5h
bmRfZ2V0X2NvbnRyb2xsZXJfZGF0YShjaGlwKTsKPiArCXUzMiBuY3RsID0gMCwgY29sID0gMCwg
cm93ID0gMCwgbmNvbHMgPSAwLCBucm93cyA9IDA7Cj4gKwl1bnNpZ25lZCBpbnQgaSwgajsKPiAr
Cj4gKwlmb3IgKGkgPSAwOyBpIDwgc3Vib3AtPm5pbnN0cnM7IGkrKykgewo+ICsJCWNvbnN0IHN0
cnVjdCBuYW5kX29wX2luc3RyICppbnN0ciA9ICZzdWJvcC0+aW5zdHJzW2ldOwo+ICsKPiArCQlz
d2l0Y2ggKGluc3RyLT50eXBlKSB7Cj4gKwkJY2FzZSBOQU5EX09QX0NNRF9JTlNUUjoKPiArCQkJ
aWYgKFdBUk5fT05fT05DRSgobmN0bCAmIE5DVExfQ01EMCkgJiYKPiArCQkJCQkgKG5jdGwgJiBO
Q1RMX0NNRDFXKSkpCj4gKwkJCQlyZXR1cm4gLUVJTlZBTDsKPiArCQkJZWxzZSBpZiAobmN0bCAm
IE5DVExfQ01EMCkKPiArCQkJCW5jdGwgfD0gTkNUTF9DTUQxVyB8Cj4gKwkJCQkJKCh1MzIpaW5z
dHItPmN0eC5jbWQub3Bjb2RlIDw8IDgpOwo+ICsJCQllbHNlCj4gKwkJCQluY3RsIHw9IE5DVExf
Q01EMCB8IGluc3RyLT5jdHguY21kLm9wY29kZTsKPiArCQkJYnJlYWs7Cj4gKwkJY2FzZSBOQU5E
X09QX0FERFJfSU5TVFI6Cj4gKwkJCWZvciAoaiA9IDA7IGogPCBpbnN0ci0+Y3R4LmFkZHIubmFk
ZHJzOyBqKyspIHsKPiArCQkJCXUzMiBhZGRyID0gaW5zdHItPmN0eC5hZGRyLmFkZHJzW2pdOwo+
ICsKPiArCQkJCWlmIChpIDwgMikgewoKRG9uJ3QgeW91IG1lYW4gaiBoZXJlPyAgICAgICAgICAg
ICAgXgoKPiArCQkJCQljb2wgfD0gYWRkciA8PCBpICogODsKCkknbSBub3Qgc3VyZSB0aGlzIHdp
bGwgd29yaywgYWRkciBpcyAzMi1iaXQgYW5kIGNvbCBhcyB3ZWxsLCBJIGJldCB5b3UKd29uJ3Qg
ZW5kIHVwIHdpdGggd2hhdCB5b3UgZXhwZWN0LgoKPiArCQkJCQluY3RsIHw9IE5DVExfQ09MOwo+
ICsJCQkJCW5jb2xzKys7Cj4gKwkJCQl9IGVsc2Ugewo+ICsJCQkJCXJvdyB8PSBhZGRyIDw8IChp
IC0gMikgKiA4Owo+ICsJCQkJCW5jdGwgfD0gTkNUTF9ST1c7Cj4gKwkJCQkJbnJvd3MrKzsKPiAr
CQkJCX0KPiArCQkJfQo+ICsJCQlicmVhazsKPiArCQlkZWZhdWx0Ogo+ICsJCQlXQVJOX09OX09O
Q0UoMSk7Cj4gKwkJCXJldHVybiAtRUlOVkFMOwo+ICsJCX0KPiArCX0KPiArCj4gKwkvKiBLZWVw
IHRoZSBDUyBsaW5lIGFzc2VydGVkIGlmIHRoZXJlJ3Mgc29tZXRoaW5nIGVsc2UgdG8gZXhlY3V0
ZS4gKi8KPiArCWlmICghc3Vib3AtPmlzX2xhc3QpCj4gKwkJbmN0bCB8PSBOQ1RMX0NTQTsKPiAr
Cj4gKwliY21hX2NjX3dyaXRlMzIoYjQ3bi0+Y2MsIEJDTUFfQ0NfTkZMQVNIX0NPTkYsCj4gKwkJ
CUNPTkZfTUFHSUNfQklUIHwKPiArCQkJQ09ORl9DT0xfQllURVMobmNvbHMpIHwKPiArCQkJQ09O
Rl9ST1dfQllURVMobnJvd3MpKTsKPiArCXJldHVybiBiY200N3h4bmZsYXNoX29wc19iY200NzA2
X2N0bF9jbWQoYjQ3bi0+Y2MsIG5jdGwpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50Cj4gK2JjbTQ3
eHhuZmxhc2hfb3BzX2JjbTQ3MDZfZXhlY193YWl0cmR5KHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAs
Cj4gKwkJCQkgICAgICAgY29uc3Qgc3RydWN0IG5hbmRfc3Vib3AgKnN1Ym9wKQo+ICt7Cj4gKwlz
dHJ1Y3QgYmNtNDd4eG5mbGFzaCAqYjQ3biA9IG5hbmRfZ2V0X2NvbnRyb2xsZXJfZGF0YShjaGlw
KTsKPiArCWNvbnN0IHN0cnVjdCBuYW5kX29wX2luc3RyICppbnN0ciA9ICZzdWJvcC0+aW5zdHJz
WzBdOwo+ICsJdW5zaWduZWQgbG9uZyB0aW1lb3V0X2ppZmZpZXMgPSBqaWZmaWVzOwo+ICsKPiAr
CWlmIChXQVJOX09OKHN1Ym9wLT5uaW5zdHJzICE9IDEgfHwKPiArCQkgICAgaW5zdHItPnR5cGUg
IT0gTkFORF9PUF9EQVRBX0lOX0lOU1RSKSkKPiArCQlyZXR1cm4gLUVJTlZBTDsKClNhbWUgcmVt
YXJrIGFzIGZvciB0aGUgYXRtZWwgbWlncmF0aW9uLCBJIGRvdWJ0IGFsbCB0aGVzZSBjaGVja3Mg
YXJlCnVzZWZ1bCBhcyBsb25nIGFzIHdlIHVzZSB0aGUgIm9mZmljaWFsIiBwYXJzZXIgdG8gY2Fs
bCB0aGVzZSBoZWxwZXJzLiBJCndvdWxkIHJhdGhlciBwcmVmZXIgdG8gZHJvcCB0aGVtIGFsbC4K
Cj4gKwo+ICsJdGltZW91dF9qaWZmaWVzICs9IG1zZWNzX3RvX2ppZmZpZXMoaW5zdHItPmN0eC53
YWl0cmR5LnRpbWVvdXRfbXMpICsgMTsKPiArCWRvIHsKPiArCQlpZiAoYmNtYV9jY19yZWFkMzIo
YjQ3bi0+Y2MsIEJDTUFfQ0NfTkZMQVNIX0NUTCkgJiBOQ1RMX1JFQURZKQo+ICsJCQlyZXR1cm4g
MDsKPiArCj4gKwkJdXNsZWVwX3JhbmdlKDEwLCAxMDApOwo+ICsJfSB3aGlsZSAodGltZV9iZWZv
cmUoamlmZmllcywgdGltZW91dF9qaWZmaWVzKSk7Cj4gKwo+ICsJcmV0dXJuIC1FVElNRURPVVQ7
Cj4gK30KCgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
