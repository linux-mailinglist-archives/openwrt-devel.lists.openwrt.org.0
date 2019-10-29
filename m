Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E30E8D4C
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 17:51:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7HFQ4QCgbdtinYKLIfz+7PXlIjqa2h0tpEvDKg44pas=; b=Y37C7UWfZV1hxO
	ZfZLgBu7T7ouZuIVDYgnqNDRMTMIjZftDOZXRqNVHcPU7Md+/UilBN5S68S1mMa5AFn9sHqjD0z6a
	o6CtYtW6z8qyF8k/EMMsF8tFIpJpSQHYSuoq7MfpzxoLaNrqzSUT0Vsf3rQuj3a+PfY41i7Hso7PJ
	K27qCsp/997Ph+LEwEEXkcJQPrqvDLtJkqZ9PtJ2ppEtvJ7RjebvsxjJP/7A6AEroHNnFfd0qx2dN
	fXFZOGjpkVC2AnBGIzU5JIpO3f9/C7cGUfILPSeJ596uLRRpM4vW/OeEp27td06ll9NC4Q/zmk3nQ
	8sfOftpTJbfVyq5TdohA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUiO-0002Kp-V6; Tue, 29 Oct 2019 16:51:28 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUi7-0002Io-Fg
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 16:51:13 +0000
Received: by mail-oi1-x241.google.com with SMTP id l202so1526260oig.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 29 Oct 2019 09:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=uoEk0VZ66zh0zSGh+kNLPqJGZ+wM39jB6awkLXkJIr8=;
 b=sSX0GV/gEea5XYcc93tTZS+N2quBTloQn9rR8zJoyKnfbLvNg66VuMGQLjcvI6KkTx
 NJS6xhvmiM+h2I+y5GpcEBe6EegkdhuAwjUnPCapqiz5IqF6dFbGwbuXUVplQh5EtWla
 z4W/sSwn5n0OWH0JTsefWYaZNgm4hHEHTS7zbFKD9Ms2nypS+arpSaZ+MukRPklXSSMG
 wguLI7a09cul4ECavRTRl5tB9zGE4jBIBTv3CuObQnhROB9b0N/OcJFkK37Rx5b9o04s
 qoXVfZ6jEXnVK8igPQ0sBC30SFnElyhqJ5XBvvTzMYf013Pkd8OeucJz9NzHnihsmgDS
 oaWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uoEk0VZ66zh0zSGh+kNLPqJGZ+wM39jB6awkLXkJIr8=;
 b=VNog/RFNqpb0jKV5RBUPNdYNnLTxFrfOvAn2tWOin6EKYLrjTj8Kg1Tyi39XrCbZkb
 X8COd1+c4M2HWz4zxrRtTzPmt7p0RohnQJUF+Lfr9c8TEoj1s4clf1VJlfcZIe1k1xoM
 jz+c6b7tuyXMDjzQlZLkTazz5GLyCZ/uokKS2Ab67SO3uYBndFnPpsFYGzDgAcZ0/MQo
 pDhpmR5xqSW3nV1eyXdv0h/6RKb1ZqayOACYmnaMd0CUzAo0Di6ntg6cxe6+QbdEyjNH
 hvf1tbiZEVwaLo5FX89J3qfyFW1cdmwlwx1WwhEMLpKZrcBLgyxpMI7tIs0hZxKlgUAf
 On9w==
X-Gm-Message-State: APjAAAXI4GQ4MJyMG3I7IrNvp0gqNF5HzE1wPkK6z80hIDARGcTvXbRA
 ArY0zPs0oxNRCLjfI870x12gx2r4TyQ/E+kq428=
X-Google-Smtp-Source: APXvYqwQcYrZgl5B6PrlgJl+BS3BDun1VbhoL8F7Yymz8oVAeaJHNNrqLhH2zjio0dkoYsQ5VxDhj2zff2gBmOsMg5E=
X-Received: by 2002:a54:4601:: with SMTP id p1mr4974002oip.113.1572367870013; 
 Tue, 29 Oct 2019 09:51:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190306040846.21746-1-rosenp@gmail.com>
 <CAJ0DADLkUPZ5WFxsaczHOj8oKrrJpCUYgm=i7fuCHzgGf=yRnA@mail.gmail.com>
In-Reply-To: <CAJ0DADLkUPZ5WFxsaczHOj8oKrrJpCUYgm=i7fuCHzgGf=yRnA@mail.gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Tue, 29 Oct 2019 09:50:58 -0700
Message-ID: <CAKxU2N9Yyd6KrYh491FGZFU7=PHxHE3qXPOpvViXpPMOvVqqjg@mail.gmail.com>
To: Mingyu Li <igvtee@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_095111_560749_ED69A63B 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gV2VkLCBNYXIgNiwgMjAxOSBhdCAxMjozNyBBTSBNaW5neXUgTGkgPGlndnRlZUBnbWFpbC5j
b20+IHdyb3RlOgo+Cj4gdGhlIG9yaWdpbmFsIGNvZGUgdXNlIHN0YXR1cyByZWdpc3RlciB0byBr
ZWVwIHRoZXJlIHN0aWxsIGhhdmUgc29tZQo+IHBrdHMgaW4gYnVmZmVyLgo+IG5lZWQgbmV4dCBu
YXBpIGNhbGwgdG8gcmVjZWl2ZSBpdC4KPgo+IGlmIDEyOCBwYWNrZXRzIGluIGJ1ZmZlci4geW91
IGNsZWFyIHN0YXR1cyBmaXJzdC4gYmVjYXVzZSBuYXBpIG1heAo+IGhhbmRsZSA2NCBwYWNrZXRz
IGluIGJ1ZmZlci4KPiBzbyA2NCBwYWNrZXRzIG5lZWQgdG8gaGFuZGxlIGluIG5leHQgbmFwaSBw
b2xsLiBpZiBubyBuZXcgcGFja2V0Cj4gY29tbWluZy4gdGhlIHN0YXR1cyByZWdpc3RlciB3aWxs
IG5vdCBzZXQuCj4gc28gZmVfcG9sbCBmdW5jdGlvbiB3aWxsIG5vdCBjYWxsIGZlX3BvbGxfdHgg
b3IgZmVfcG9sbF9yeC4gdGhhdCB3b3VsZAo+IGJlIGEgcHJvYmxlbS4KPgo+IHRoZSBzdGF0dXMg
cmVnaXN0ZXIgYWxzbyB1c2UgdG8gY29udHJvbCBuYXBpIGludGVycnVwdCBlbmFibGUuIG11c3QK
PiBtYWtlIHN1cmUgbm8gcGFja2V0cyBuZWVkIHRvCj4gaGFuZGxlIHRoZW4gZW5hYmxlIGludGVy
cnVwdC4KSSB0b29rIGEgbG9vayBhdCB0aGlzIGFnYWluLiBUaGUgdXBzdHJlYW0ga2VybmVsIGRy
aXZlciBkb2VzIHRoZSBzYW1lCmFzIHRoaXMgcGF0Y2g6IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3N0YWJsZS9saW51eC5naXQvdHJlZS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jP2g9djQuMTQuMTUxI24xMTg5Cj4KPiBS
b3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4g5pa8IDIwMTnlubQz5pyINuaXpSDpgLHkuIkg
5LiL5Y2IMTI6MDjlr6vpgZPvvJoKPiA+Cj4gPiBGcm9tOiBOZWlsQnJvd24gPG5laWxAYnJvd24u
bmFtZT4KPiA+Cj4gPiBUaGUgY3VycmVudCBjb2RlIGFja25vd2xlZGdlZCBpbnRlcnJ1cHRzICph
ZnRlciogcG9sbGluZy4KPiA+IFRoaXMgaXMgdGhlIHdyb25nIHdheSBhcm91bmQsIGFuZCBjb3Vs
ZCBjYXVzZSBhbiBpbnRlcnJ1cHQgdG8KPiA+IGJlIG1pc3NlZC4KPiA+IFRoaXMgaXMgbm90IGxp
a2VseSB0byBiZSBmYXRhbCBhcyBhbm90aGVyIHBhY2tldCwgYW5kIHNvIGFub3RoZXIKPiA+IGlu
dGVycnVwdCwgc2hvdWxkIGNvbWUgYWxvbmcgc29vbi4gIEJ1dCBtYXliZSBpdCBpcyBjYXVzaW5n
Cj4gPiBwcm9ibGVtcywgc28gbGV0J3MgZml4IGl0IGFueXdheS4KPiA+Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBOZWlsQnJvd24gPG5laWxAYnJvd24ubmFtZT4KPiA+IFNpZ25lZC1vZmYtYnk6IFJvc2Vu
IFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgLi4uL2RyaXZlcnMvbmV0L2V0
aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMgICAgICAgfCAxMSArKysrKy0tLS0tLQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gPgo+ID4g
ZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMvZmlsZXMtNC4xNC9kcml2ZXJzL25ldC9l
dGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9maWxl
cy00LjE0L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMKPiA+IGlu
ZGV4IGUwYmMwYWI4MTguLjJlMGM4Zjk0Y2EgMTAwNjQ0Cj4gPiAtLS0gYS90YXJnZXQvbGludXgv
cmFtaXBzL2ZpbGVzLTQuMTQvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvbXRrX2V0aF9z
b2MuYwo+ID4gKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9maWxlcy00LjE0L2RyaXZlcnMvbmV0
L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMKPiA+IEBAIC04NzYsNiArODc2LDggQEAg
c3RhdGljIGludCBmZV9wb2xsX3J4KHN0cnVjdCBuYXBpX3N0cnVjdCAqbmFwaSwgaW50IGJ1ZGdl
dCwKPiA+ICAgICAgICAgc3RydWN0IGZlX3J4X2RtYSAqcnhkLCB0cnhkOwo+ID4gICAgICAgICBp
bnQgZG9uZSA9IDAsIHBhZDsKPiA+Cj4gPiArICAgICAgIGZlX3JlZ193MzIocnhfaW50ciwgRkVf
UkVHX0ZFX0lOVF9TVEFUVVMpOwo+ID4gKwo+ID4gICAgICAgICBpZiAobmV0ZGV2LT5mZWF0dXJl
cyAmIE5FVElGX0ZfUlhDU1VNKQo+ID4gICAgICAgICAgICAgICAgIGNoZWNrc3VtX2JpdCA9IHNv
Yy0+Y2hlY2tzdW1fYml0Owo+ID4gICAgICAgICBlbHNlCj4gPiBAQCAtOTYzLDkgKzk2NSw2IEBA
IHJlbGVhc2VfZGVzYzoKPiA+ICAgICAgICAgICAgICAgICBkb25lKys7Cj4gPiAgICAgICAgIH0K
PiA+Cj4gPiAtICAgICAgIGlmIChkb25lIDwgYnVkZ2V0KQo+ID4gLSAgICAgICAgICAgICAgIGZl
X3JlZ193MzIocnhfaW50ciwgRkVfUkVHX0ZFX0lOVF9TVEFUVVMpOwo+ID4gLQo+ID4gICAgICAg
ICByZXR1cm4gZG9uZTsKPiA+ICB9Cj4gPgo+ID4gQEAgLTk4MSw2ICs5ODAsOCBAQCBzdGF0aWMg
aW50IGZlX3BvbGxfdHgoc3RydWN0IGZlX3ByaXYgKnByaXYsIGludCBidWRnZXQsIHUzMiB0eF9p
bnRyLAo+ID4gICAgICAgICB1MzIgaWR4LCBod2lkeDsKPiA+ICAgICAgICAgc3RydWN0IGZlX3R4
X3JpbmcgKnJpbmcgPSAmcHJpdi0+dHhfcmluZzsKPiA+Cj4gPiArICAgICAgIGZlX3JlZ193MzIo
dHhfaW50ciwgRkVfUkVHX0ZFX0lOVF9TVEFUVVMpOwo+ID4gKwo+ID4gICAgICAgICBpZHggPSBy
aW5nLT50eF9mcmVlX2lkeDsKPiA+ICAgICAgICAgaHdpZHggPSBmZV9yZWdfcjMyKEZFX1JFR19U
WF9EVFhfSURYMCk7Cj4gPgo+ID4gQEAgLTEwMDQsOSArMTAwNSw3IEBAIHN0YXRpYyBpbnQgZmVf
cG9sbF90eChzdHJ1Y3QgZmVfcHJpdiAqcHJpdiwgaW50IGJ1ZGdldCwgdTMyIHR4X2ludHIsCj4g
PiAgICAgICAgIGlmIChpZHggPT0gaHdpZHgpIHsKPiA+ICAgICAgICAgICAgICAgICAvKiByZWFk
IGh3IGluZGV4IGFnYWluIG1ha2Ugc3VyZSBubyBuZXcgdHggcGFja2V0ICovCj4gPiAgICAgICAg
ICAgICAgICAgaHdpZHggPSBmZV9yZWdfcjMyKEZFX1JFR19UWF9EVFhfSURYMCk7Cj4gPiAtICAg
ICAgICAgICAgICAgaWYgKGlkeCA9PSBod2lkeCkKPiA+IC0gICAgICAgICAgICAgICAgICAgICAg
IGZlX3JlZ193MzIodHhfaW50ciwgRkVfUkVHX0ZFX0lOVF9TVEFUVVMpOwo+ID4gLSAgICAgICAg
ICAgICAgIGVsc2UKPiA+ICsgICAgICAgICAgICAgICBpZiAoaWR4ICE9IGh3aWR4KQo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgKnR4X2FnYWluID0gMTsKPiA+ICAgICAgICAgfSBlbHNlIHsK
PiA+ICAgICAgICAgICAgICAgICAqdHhfYWdhaW4gPSAxOwo+ID4gLS0KPiA+IDIuMTcuMQo+ID4K
PiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
ID4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
