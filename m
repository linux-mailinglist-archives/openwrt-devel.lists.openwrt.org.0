Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62A91FD679
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 22:55:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbZRJCGjIezxb5eR2z0eR4qZinnOUvrtKWbxLaqa1Z8=; b=DNMiL159n0OcQi
	1NdZ+MDkICRB6eiYoUqFztjcmwXmilWQt7Q1bcLasNJG+Ur6tLpHe5T5E8V1iFci35syCh89aKAT+
	x77B6UtIWe8mcShN5VM9yhXrhsu+SnrJyCGj1+8PXr6RBwwcbfrbRMhtSg6sffQYtbeIP2ZVXS1P8
	c+2jrWs2+t0s1KuFLFOYWpOuyNeZ4ETjgHRbw2VyCAxboaYNdtONbb5rdDJTfZiDBKtwZQvyEAYGp
	we72Mbwy8VcnspDms3oi0ro52QJqpk4dUUGMZBasorUZu65joDr/IURzhNIfly6c3gG+/y93+y2dn
	w0uj4l9fv1hk3B2ub+Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlf5B-0007T2-Rf; Wed, 17 Jun 2020 20:54:53 +0000
Received: from mail.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlf55-0007Sg-CJ
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 20:54:48 +0000
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id b625272e;
 Wed, 17 Jun 2020 20:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=date:from:to
 :cc:subject:message-id:references:mime-version:content-type
 :content-transfer-encoding:in-reply-to; s=mail; bh=CmcO/S6a8o5VV
 qaoSHaFCi5JewM=; b=qgt9LCWRdA9CyxiqPTi6xa2NZJexGWg4POSWTcvqU8s0x
 phlXhIqz5oa+eMmAE2mnag7x0QAt8OAf8EJLjyTRzfgbt8b5+Gmufa3y+ZzVwZVu
 uHS/YYOUQK8N6GXUvmQ4HhGQbnWBngPbriDGWbW0GrVkExW82GCa9IpRklkkWjdP
 Hf3qQMc33wi0KfvkSl73tHVn7f66gfRSG83E7Y8RJCTryxxzWG/VjmZOhMaPvTBO
 jD+ApdC7kB61RPte1Bz9t++kJlnHPVZRBQEnXHxH5kvieSdx3CFuhbbNi8yz9JJ5
 s3TUmCW0D52gT074PI2KBCBRAys6v5GTTXjlwW4xg==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id e8b718bc
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO); 
 Wed, 17 Jun 2020 20:36:36 +0000 (UTC)
Date: Wed, 17 Jun 2020 14:54:43 -0600
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Rui Salvaterra <rsalvaterra@gmail.com>
Message-ID: <20200617205443.GA403252@zx2c4.com>
References: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
 <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
 <CALjTZvbtjVwpyV+AMX4htssTbwTHV45mQeokUr952D_GbtFPvw@mail.gmail.com>
 <CALjTZvZRerzWqaqhY2U=m44n5taLEsY99uEt2=ZNCe27=LYbLA@mail.gmail.com>
 <CAHmME9otC1mOqR2tLB55BVQQpNPvCMUGa1E4jfMYYXNp6_31BA@mail.gmail.com>
 <CALjTZvZ4wqZZ7_Fk-YHaxT9uuWnS4n9dLm4ZXSy1UM3riv+NuQ@mail.gmail.com>
 <CAHmME9qWrBTCsBr7s6oLD0zuBMzZUD2OV3s-tgDwV0W7bb9Utw@mail.gmail.com>
 <CAHmME9p51XvLEZ7QbDreEXym34S4XZZaRotAv4aRiT5D4Pz3XA@mail.gmail.com>
 <20200617204510.GA396261@zx2c4.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617204510.GA396261@zx2c4.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_135447_634421_F3784F4A 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] wireguard: unknown relocation: 102 [ARMv7
 Thumb-2]
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 wireguard@lists.zx2c4.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCBKdW4gMTcsIDIwMjAgYXQgMDI6NDU6MTJQTSAtMDYwMCwgSmFzb24gQS4gRG9uZW5m
ZWxkIHdyb3RlOgo+IExvb2tzIGxpa2UgbXkgZXhwbGFuYXRpb24gdGhlcmUgd2Fzbid0IDEwMCUg
YWNjdXJhdGUsIGJ1dCBpdCBkb2VzIHNlZW0KPiBsaWtlIHRoZSBpc3N1ZSBvY2N1cnMgd2hlbiBn
Y2Mgc2VlcyBhIGNsZWFyIHRhaWwgY2FsbCB0aGF0IGl0IGNhbgo+IG9wdGltaXplIGludG8gYSBC
IGluc3RydWN0aW9uIGluc3RlYWQgb2YgYSBCTCBpbnN0cnVjdGlvbi4KPiAKPiBUaGUgYmVsb3cg
cGF0Y2ggYXZvaWRzIHRoYXQsIGFuZCB0aHVzIGZpeGVzIHlvdXIgaXNzdWUsIHVzaW5nIGEgcHJl
dHR5Cj4gYmFkIHRyaWNrIHRoYXQncyBub3QgcmVhbGx5IHN1aXRhYmxlIGZvciBiZWluZyBjb21t
aXR0ZWQgYW55d2hlcmUsIGJ1dAo+IGl0IGlzIHBlcmhhcHMgbGVhZGluZyB1cyBpbiB0aGUgcmln
aHQgZGlyZWN0aW9uOgo+IAo+IGRpZmYgLS1naXQgYS9zcmMvc2VuZC5jIGIvc3JjL3NlbmQuYwo+
IGluZGV4IDgyOGIwODZhLi40YmI2OTExZiAxMDA2NDQKPiAtLS0gYS9zcmMvc2VuZC5jCj4gKysr
IGIvc3JjL3NlbmQuYwo+IEBAIC0yMjEsNiArMjIxLDggQEAgc3RhdGljIGJvb2wgZW5jcnlwdF9w
YWNrZXQoc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3RydWN0IG5vaXNlX2tleXBhaXIgKmtleXBhaXIs
Cj4gwqAgwqAgwqBzaW1kX2NvbnRleHQpOwo+IMKgfQo+IMKgCj4gK3ZvbGF0aWxlIGNoYXIgZHVt
bXk7Cj4gKwo+IMKgdm9pZCB3Z19wYWNrZXRfc2VuZF9rZWVwYWxpdmUoc3RydWN0IHdnX3BlZXIg
KnBlZXIpCj4gwqB7Cj4gwqAgc3RydWN0IHNrX2J1ZmYgKnNrYjsKPiBAQCAtMjQwLDYgKzI0Miw3
IEBAIHZvaWQgd2dfcGFja2V0X3NlbmRfa2VlcGFsaXZlKHN0cnVjdCB3Z19wZWVyICpwZWVyKQo+
IMKgIH0KPiDCoAo+IMKgIHdnX3BhY2tldF9zZW5kX3N0YWdlZF9wYWNrZXRzKHBlZXIpOwo+ICsg
ZHVtbXkgPSAtMTsKPiDCoH0KPiDCoAo+IMKgc3RhdGljIHZvaWQgd2dfcGFja2V0X2NyZWF0ZV9k
YXRhX2RvbmUoc3RydWN0IHNrX2J1ZmYgKmZpcnN0LAoKQSBiZXR0ZXIgZml4IHdpdGggbW9yZSBl
eHBsYW5hdGlvbjogaXQgbG9va3MgbGlrZSB0aGUgaXNzdWUgZG9lc24ndCBoYXZlCnRvIGRvIHdp
dGggdGhlIG11bHRpZmlsZSB0aGluZyBJIHBvaW50ZWQgb3V0IGJlZm9yZSwgYnV0IGp1c3QgdGhh
dCBnY2MKc2VlcyBpdCBjYW4gb3B0aW1pemUgdGhlIHRhaWwgY2FsbCBpbnRvIGEgQiBpbnN0cnVj
dGlvbiwgd2hpY2ggc2VlbXMgdG8KaGF2ZSBhIMKxMktCIHJhbmdlLCB3aGVyZWFzIEJMIGhhcyBh
IMKxNE1CIHJhbmdlLiBUaGUgc29sdXRpb24gaXMgdG8ganVzdAptb3ZlIHRoZSBsb2NhdGlvbiBv
ZiB0aGUgZnVuY3Rpb24gaW4gdGhhdCBmaWxlIHRvIGJlIGNsb3NlciB0byB0aGUKZGVzdGluYXRp
b24gb2YgdGhlIHRhaWwgY2FsbC4gSSdtIG5vdCBhIGJpZyBmYW4gb2YgdGhhdCBhbmQgSSdtIHNs
aWdodGx5CndvcnJpZWQgZGF2ZW0gd2lsbCBuYWNrIGl0IGJlY2F1c2UgaXQgbWFrZXMgYmFja3Bv
cnRpbmcgaGFyZGVyIGZvciBhCmZhaXJseSBzcGVjdWxhdGl2ZSBnYWluIChhdCBsZWFzdCwgSSBo
YXZlbid0IHlldCB0YWtlbiBtZWFzdXJlbWVudHMsCnRob3VnaCBJIHN1cHBvc2UgSSBjb3VsZCku
IFRoZXJlJ3MgYWxzbyB0aGUgcXVlc3Rpb24gb2YgLSB3aHkgYXJlIHdlCmRvaW5nIGdvb2Z5IHJl
b3JkZXJpbmcgdGhpbmdzIHRvIHRoZSBjb2RlIHRvIHdvcmsgYXJvdW5kIGEgdG9vbGNoYWluCmJ1
Zz8gU2hvdWxkbid0IHdlIGZpeCB0aGUgdG9vbGNoYWluPyBTbywgSSdsbCBrZWVwIHRoaW5raW5n
Li4uCgpkaWZmIC0tZ2l0IGEvc3JjL3NlbmQuYyBiL3NyYy9zZW5kLmMKaW5kZXggODI4YjA4NmEu
LmY0NGFmZjhkIDEwMDY0NAotLS0gYS9zcmMvc2VuZC5jCisrKyBiL3NyYy9zZW5kLmMKQEAgLTIy
MSwyNyArMjIxLDYgQEAgc3RhdGljIGJvb2wgZW5jcnlwdF9wYWNrZXQoc3RydWN0IHNrX2J1ZmYg
KnNrYiwgc3RydWN0IG5vaXNlX2tleXBhaXIgKmtleXBhaXIsCiAJCQkJCQkgICBzaW1kX2NvbnRl
eHQpOwogfQoKLXZvaWQgd2dfcGFja2V0X3NlbmRfa2VlcGFsaXZlKHN0cnVjdCB3Z19wZWVyICpw
ZWVyKQotewotCXN0cnVjdCBza19idWZmICpza2I7Ci0KLQlpZiAoc2tiX3F1ZXVlX2VtcHR5KCZw
ZWVyLT5zdGFnZWRfcGFja2V0X3F1ZXVlKSkgewotCQlza2IgPSBhbGxvY19za2IoREFUQV9QQUNL
RVRfSEVBRF9ST09NICsgTUVTU0FHRV9NSU5JTVVNX0xFTkdUSCwKLQkJCQlHRlBfQVRPTUlDKTsK
LQkJaWYgKHVubGlrZWx5KCFza2IpKQotCQkJcmV0dXJuOwotCQlza2JfcmVzZXJ2ZShza2IsIERB
VEFfUEFDS0VUX0hFQURfUk9PTSk7Ci0JCXNrYi0+ZGV2ID0gcGVlci0+ZGV2aWNlLT5kZXY7Ci0J
CVBBQ0tFVF9DQihza2IpLT5tdHUgPSBza2ItPmRldi0+bXR1OwotCQlza2JfcXVldWVfdGFpbCgm
cGVlci0+c3RhZ2VkX3BhY2tldF9xdWV1ZSwgc2tiKTsKLQkJbmV0X2RiZ19yYXRlbGltaXRlZCgi
JXM6IFNlbmRpbmcga2VlcGFsaXZlIHBhY2tldCB0byBwZWVyICVsbHUgKCVwSVNwZnNjKVxuIiwK
LQkJCQkgICAgcGVlci0+ZGV2aWNlLT5kZXYtPm5hbWUsIHBlZXItPmludGVybmFsX2lkLAotCQkJ
CSAgICAmcGVlci0+ZW5kcG9pbnQuYWRkcik7Ci0JfQotCi0Jd2dfcGFja2V0X3NlbmRfc3RhZ2Vk
X3BhY2tldHMocGVlcik7Ci19Ci0KIHN0YXRpYyB2b2lkIHdnX3BhY2tldF9jcmVhdGVfZGF0YV9k
b25lKHN0cnVjdCBza19idWZmICpmaXJzdCwKIAkJCQkgICAgICAgc3RydWN0IHdnX3BlZXIgKnBl
ZXIpCiB7CkBAIC0zNDYsNiArMzI1LDI3IEBAIGVycjoKIAlrZnJlZV9za2JfbGlzdChmaXJzdCk7
CiB9Cgordm9pZCB3Z19wYWNrZXRfc2VuZF9rZWVwYWxpdmUoc3RydWN0IHdnX3BlZXIgKnBlZXIp
Cit7CisJc3RydWN0IHNrX2J1ZmYgKnNrYjsKKworCWlmIChza2JfcXVldWVfZW1wdHkoJnBlZXIt
PnN0YWdlZF9wYWNrZXRfcXVldWUpKSB7CisJCXNrYiA9IGFsbG9jX3NrYihEQVRBX1BBQ0tFVF9I
RUFEX1JPT00gKyBNRVNTQUdFX01JTklNVU1fTEVOR1RILAorCQkJCUdGUF9BVE9NSUMpOworCQlp
ZiAodW5saWtlbHkoIXNrYikpCisJCQlyZXR1cm47CisJCXNrYl9yZXNlcnZlKHNrYiwgREFUQV9Q
QUNLRVRfSEVBRF9ST09NKTsKKwkJc2tiLT5kZXYgPSBwZWVyLT5kZXZpY2UtPmRldjsKKwkJUEFD
S0VUX0NCKHNrYiktPm10dSA9IHNrYi0+ZGV2LT5tdHU7CisJCXNrYl9xdWV1ZV90YWlsKCZwZWVy
LT5zdGFnZWRfcGFja2V0X3F1ZXVlLCBza2IpOworCQluZXRfZGJnX3JhdGVsaW1pdGVkKCIlczog
U2VuZGluZyBrZWVwYWxpdmUgcGFja2V0IHRvIHBlZXIgJWxsdSAoJXBJU3Bmc2MpXG4iLAorCQkJ
CSAgICBwZWVyLT5kZXZpY2UtPmRldi0+bmFtZSwgcGVlci0+aW50ZXJuYWxfaWQsCisJCQkJICAg
ICZwZWVyLT5lbmRwb2ludC5hZGRyKTsKKwl9CisKKwl3Z19wYWNrZXRfc2VuZF9zdGFnZWRfcGFj
a2V0cyhwZWVyKTsKK30KKwogdm9pZCB3Z19wYWNrZXRfcHVyZ2Vfc3RhZ2VkX3BhY2tldHMoc3Ry
dWN0IHdnX3BlZXIgKnBlZXIpCiB7CiAJc3Bpbl9sb2NrX2JoKCZwZWVyLT5zdGFnZWRfcGFja2V0
X3F1ZXVlLmxvY2spOwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
