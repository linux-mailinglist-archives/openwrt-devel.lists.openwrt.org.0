Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CD6EB3D7
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 16:24:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MKAuYiyYWpBIMQlcMlyJYudNlSLV9pzTaL+9IaFirk=; b=tJUBIK8ymFhj9a
	v7peY2YtP8jgsIQ7+8dRmUyxY1qD5ERSWM4HiEixqIxPmtXgaP7u7WQ1oofPs3SA3WZ1UDKwksy+k
	0V3xGtCiPPKBEwB6vguV2VNpIEBjeotZOZOGGLt/ZLP7N8KUlle/XvflBp9K15nrGLT6nSLWW1bUk
	fvLUEQVa0wKjtHC5vXOc43KpumRr+tfz4LIiqPnDdqaZuOo6ovmY/fj4arnEYiTL2aYXVje5p8HgY
	FaDoMZEELLhSx/kgZDa7HbuYduqtPUY+IrjggB6xezRvmOX/U0ZVixfqxcrlrQtYqhsZFZTXT+obt
	NlA6/0NWRFSf4TC+rU6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQCJC-0004Xi-R8; Thu, 31 Oct 2019 15:24:22 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQCJ3-0004Wn-W5
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 15:24:15 +0000
Received: by mail-lf1-x142.google.com with SMTP id f5so5016515lfp.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 08:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=kyvCibKvdamSLE+sdwx49WURTE86DidyRbuZAUaF0VU=;
 b=m9YaFFZTtBWeXHuwAVN3Zrqh3SVASKf9bBEfuczvdtAzpUHcS5fVXXZOiKPKy8C51l
 eLUDDbq1tEGSDaVYLl9s3mr+XJVD2Xjwyc53ufJfVtz1vVZBIGvi/CSMpfWOe9indqDK
 tOYBq4ktKXQlYsZfEjTLfTLl9N82i+RrpOL2sMIxLFCo0gQdZY6neU6eZZlIMEHGhg4K
 5hhkltw1ChXQh7k6gtdjW4eKNhyj9u2vshk2iRmpQAHeo68FOxvUThuR58PUAgP7XSmY
 mArbV21dF8oAqygSDzK/TFu/um8eINjm0FTDW6sJk8SEL67x1xR1rHurqAh52h4Fk2a+
 bWKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kyvCibKvdamSLE+sdwx49WURTE86DidyRbuZAUaF0VU=;
 b=uQESGVrWcH52vujEayX5X8eNhQPIMbcDuXEhiQBRx/nEhpGWSwc5CuqoAjUbATS0xj
 GvzORTOSV7CCday3qznSjVk59ODwLNLnQaAsRtovVttU5Qi4RCQMXdGxevZbtK6vqvwz
 oTIRHYSp11XGdfJ9busmZ7v6TpsKXVODAFB3gHHmIDE5r8J7CzsTp9qsQHy1KYv9jCWE
 jfh8cnYpSdHaweggcPKzwuH1MEoa60pTwB+lej0EXnVL+Z56zjGP4fXQeAlS9opRt6v4
 Bj28ehggsCvNVXsmemA/O0RcJX5JUl9lras3PzxUXm8wz07wDB+mjVA852U5AQfzxqqO
 CF0g==
X-Gm-Message-State: APjAAAVhEFWY7uPnTm0q38paqJnRSVStUcgb4Hgsy80aIWNfAN9PBh4U
 KPv8xmZNdaKCv7DPUN1ATQcShugvMidYckzx+/Y=
X-Google-Smtp-Source: APXvYqyQeV3f1gLZKMWkRWLviERYzcS0YJkyWYNOS6FTnbl+0Mo0oAYwo1bIrJoKJIA8D1pqwV3x9j5fDcqSOpBiKgo=
X-Received: by 2002:a19:651b:: with SMTP id z27mr3897306lfb.117.1572535450380; 
 Thu, 31 Oct 2019 08:24:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190306040846.21746-1-rosenp@gmail.com>
 <CAJ0DADLkUPZ5WFxsaczHOj8oKrrJpCUYgm=i7fuCHzgGf=yRnA@mail.gmail.com>
 <CAKxU2N9Yyd6KrYh491FGZFU7=PHxHE3qXPOpvViXpPMOvVqqjg@mail.gmail.com>
In-Reply-To: <CAKxU2N9Yyd6KrYh491FGZFU7=PHxHE3qXPOpvViXpPMOvVqqjg@mail.gmail.com>
From: Mingyu Li <igvtee@gmail.com>
Date: Thu, 31 Oct 2019 23:23:57 +0800
Message-ID: <CAJ0DADKOFn1OPO7-TUfauBZ98T8KZTVNe4GrOnQ+6Pqut0cMfg@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_082414_057890_234F96CB 
X-CRM114-Status: GOOD (  24.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (igvtee[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: ethernet: fix to interrupt
 handling
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

dGhlIHVwc3RyZWFtIGtlcm5lbC4gdGhlIGZ1bmN0aW9uIG10a19uYXBpX3J4IGFsd2F5cyBiZSBj
YWxsZWQgaWYgaXQgaGF2ZQpwYWNrZXQgdG8gcmVjZWl2ZS4gaXQgZG9lc24ndCBjaGVjayBzdGF0
dXMgcmVnaXN0ZXIuCmJ1dCBvbiBvcGVud3J0IGNvZGUuIGNoZWNrIHRoZSBzdGF0dXMgcmVnaXN0
ZXIgZmlyc3QuIHRoZW4gY2FsbCBmZV9wb2xsX3J4LgppZiB5b3UgY2xlYXIgc3RhdHVzIHJlZ2lz
dGVyLiBmZV9wb2xsX3J4IHdpbGwgd2lsbCBub3QgYmUgY2FsbGVkIG5leHQgdGltZS4KClJvc2Vu
IFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiDmlrwgMjAxOeW5tDEw5pyIMzDml6Ug6YCx5LiJIOS4
iuWNiDEyOjUx5a+r6YGT77yaCj4KPiBPbiBXZWQsIE1hciA2LCAyMDE5IGF0IDEyOjM3IEFNIE1p
bmd5dSBMaSA8aWd2dGVlQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gdGhlIG9yaWdpbmFsIGNv
ZGUgdXNlIHN0YXR1cyByZWdpc3RlciB0byBrZWVwIHRoZXJlIHN0aWxsIGhhdmUgc29tZQo+ID4g
cGt0cyBpbiBidWZmZXIuCj4gPiBuZWVkIG5leHQgbmFwaSBjYWxsIHRvIHJlY2VpdmUgaXQuCj4g
Pgo+ID4gaWYgMTI4IHBhY2tldHMgaW4gYnVmZmVyLiB5b3UgY2xlYXIgc3RhdHVzIGZpcnN0LiBi
ZWNhdXNlIG5hcGkgbWF4Cj4gPiBoYW5kbGUgNjQgcGFja2V0cyBpbiBidWZmZXIuCj4gPiBzbyA2
NCBwYWNrZXRzIG5lZWQgdG8gaGFuZGxlIGluIG5leHQgbmFwaSBwb2xsLiBpZiBubyBuZXcgcGFj
a2V0Cj4gPiBjb21taW5nLiB0aGUgc3RhdHVzIHJlZ2lzdGVyIHdpbGwgbm90IHNldC4KPiA+IHNv
IGZlX3BvbGwgZnVuY3Rpb24gd2lsbCBub3QgY2FsbCBmZV9wb2xsX3R4IG9yIGZlX3BvbGxfcngu
IHRoYXQgd291bGQKPiA+IGJlIGEgcHJvYmxlbS4KPiA+Cj4gPiB0aGUgc3RhdHVzIHJlZ2lzdGVy
IGFsc28gdXNlIHRvIGNvbnRyb2wgbmFwaSBpbnRlcnJ1cHQgZW5hYmxlLiBtdXN0Cj4gPiBtYWtl
IHN1cmUgbm8gcGFja2V0cyBuZWVkIHRvCj4gPiBoYW5kbGUgdGhlbiBlbmFibGUgaW50ZXJydXB0
Lgo+IEkgdG9vayBhIGxvb2sgYXQgdGhpcyBhZ2Fpbi4gVGhlIHVwc3RyZWFtIGtlcm5lbCBkcml2
ZXIgZG9lcyB0aGUgc2FtZQo+IGFzIHRoaXMgcGF0Y2g6IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3N0YWJsZS9saW51eC5naXQvdHJlZS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jP2g9djQuMTQuMTUxI24xMTg5Cj4gPgo+
ID4gUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IOaWvCAyMDE55bm0M+aciDbml6Ug6YCx
5LiJIOS4i+WNiDEyOjA45a+r6YGT77yaCj4gPiA+Cj4gPiA+IEZyb206IE5laWxCcm93biA8bmVp
bEBicm93bi5uYW1lPgo+ID4gPgo+ID4gPiBUaGUgY3VycmVudCBjb2RlIGFja25vd2xlZGdlZCBp
bnRlcnJ1cHRzICphZnRlciogcG9sbGluZy4KPiA+ID4gVGhpcyBpcyB0aGUgd3Jvbmcgd2F5IGFy
b3VuZCwgYW5kIGNvdWxkIGNhdXNlIGFuIGludGVycnVwdCB0bwo+ID4gPiBiZSBtaXNzZWQuCj4g
PiA+IFRoaXMgaXMgbm90IGxpa2VseSB0byBiZSBmYXRhbCBhcyBhbm90aGVyIHBhY2tldCwgYW5k
IHNvIGFub3RoZXIKPiA+ID4gaW50ZXJydXB0LCBzaG91bGQgY29tZSBhbG9uZyBzb29uLiAgQnV0
IG1heWJlIGl0IGlzIGNhdXNpbmcKPiA+ID4gcHJvYmxlbXMsIHNvIGxldCdzIGZpeCBpdCBhbnl3
YXkuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IE5laWxCcm93biA8bmVpbEBicm93bi5uYW1l
Pgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4KPiA+
ID4gLS0tCj4gPiA+ICAuLi4vZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9z
b2MuYyAgICAgICB8IDExICsrKysrLS0tLS0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0
L2xpbnV4L3JhbWlwcy9maWxlcy00LjE0L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210
a19ldGhfc29jLmMgYi90YXJnZXQvbGludXgvcmFtaXBzL2ZpbGVzLTQuMTQvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYwo+ID4gPiBpbmRleCBlMGJjMGFiODE4Li4y
ZTBjOGY5NGNhIDEwMDY0NAo+ID4gPiAtLS0gYS90YXJnZXQvbGludXgvcmFtaXBzL2ZpbGVzLTQu
MTQvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9zb2MuYwo+ID4gPiArKysg
Yi90YXJnZXQvbGludXgvcmFtaXBzL2ZpbGVzLTQuMTQvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVk
aWF0ZWsvbXRrX2V0aF9zb2MuYwo+ID4gPiBAQCAtODc2LDYgKzg3Niw4IEBAIHN0YXRpYyBpbnQg
ZmVfcG9sbF9yeChzdHJ1Y3QgbmFwaV9zdHJ1Y3QgKm5hcGksIGludCBidWRnZXQsCj4gPiA+ICAg
ICAgICAgc3RydWN0IGZlX3J4X2RtYSAqcnhkLCB0cnhkOwo+ID4gPiAgICAgICAgIGludCBkb25l
ID0gMCwgcGFkOwo+ID4gPgo+ID4gPiArICAgICAgIGZlX3JlZ193MzIocnhfaW50ciwgRkVfUkVH
X0ZFX0lOVF9TVEFUVVMpOwo+ID4gPiArCj4gPiA+ICAgICAgICAgaWYgKG5ldGRldi0+ZmVhdHVy
ZXMgJiBORVRJRl9GX1JYQ1NVTSkKPiA+ID4gICAgICAgICAgICAgICAgIGNoZWNrc3VtX2JpdCA9
IHNvYy0+Y2hlY2tzdW1fYml0Owo+ID4gPiAgICAgICAgIGVsc2UKPiA+ID4gQEAgLTk2Myw5ICs5
NjUsNiBAQCByZWxlYXNlX2Rlc2M6Cj4gPiA+ICAgICAgICAgICAgICAgICBkb25lKys7Cj4gPiA+
ICAgICAgICAgfQo+ID4gPgo+ID4gPiAtICAgICAgIGlmIChkb25lIDwgYnVkZ2V0KQo+ID4gPiAt
ICAgICAgICAgICAgICAgZmVfcmVnX3czMihyeF9pbnRyLCBGRV9SRUdfRkVfSU5UX1NUQVRVUyk7
Cj4gPiA+IC0KPiA+ID4gICAgICAgICByZXR1cm4gZG9uZTsKPiA+ID4gIH0KPiA+ID4KPiA+ID4g
QEAgLTk4MSw2ICs5ODAsOCBAQCBzdGF0aWMgaW50IGZlX3BvbGxfdHgoc3RydWN0IGZlX3ByaXYg
KnByaXYsIGludCBidWRnZXQsIHUzMiB0eF9pbnRyLAo+ID4gPiAgICAgICAgIHUzMiBpZHgsIGh3
aWR4Owo+ID4gPiAgICAgICAgIHN0cnVjdCBmZV90eF9yaW5nICpyaW5nID0gJnByaXYtPnR4X3Jp
bmc7Cj4gPiA+Cj4gPiA+ICsgICAgICAgZmVfcmVnX3czMih0eF9pbnRyLCBGRV9SRUdfRkVfSU5U
X1NUQVRVUyk7Cj4gPiA+ICsKPiA+ID4gICAgICAgICBpZHggPSByaW5nLT50eF9mcmVlX2lkeDsK
PiA+ID4gICAgICAgICBod2lkeCA9IGZlX3JlZ19yMzIoRkVfUkVHX1RYX0RUWF9JRFgwKTsKPiA+
ID4KPiA+ID4gQEAgLTEwMDQsOSArMTAwNSw3IEBAIHN0YXRpYyBpbnQgZmVfcG9sbF90eChzdHJ1
Y3QgZmVfcHJpdiAqcHJpdiwgaW50IGJ1ZGdldCwgdTMyIHR4X2ludHIsCj4gPiA+ICAgICAgICAg
aWYgKGlkeCA9PSBod2lkeCkgewo+ID4gPiAgICAgICAgICAgICAgICAgLyogcmVhZCBodyBpbmRl
eCBhZ2FpbiBtYWtlIHN1cmUgbm8gbmV3IHR4IHBhY2tldCAqLwo+ID4gPiAgICAgICAgICAgICAg
ICAgaHdpZHggPSBmZV9yZWdfcjMyKEZFX1JFR19UWF9EVFhfSURYMCk7Cj4gPiA+IC0gICAgICAg
ICAgICAgICBpZiAoaWR4ID09IGh3aWR4KQo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICBm
ZV9yZWdfdzMyKHR4X2ludHIsIEZFX1JFR19GRV9JTlRfU1RBVFVTKTsKPiA+ID4gLSAgICAgICAg
ICAgICAgIGVsc2UKPiA+ID4gKyAgICAgICAgICAgICAgIGlmIChpZHggIT0gaHdpZHgpCj4gPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICp0eF9hZ2FpbiA9IDE7Cj4gPiA+ICAgICAgICAgfSBl
bHNlIHsKPiA+ID4gICAgICAgICAgICAgICAgICp0eF9hZ2FpbiA9IDE7Cj4gPiA+IC0tCj4gPiA+
IDIuMTcuMQo+ID4gPgo+ID4gPgo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+ID4gPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+ID4gPiBv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gPiA+IGh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
