Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A42F3153212
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 14:43:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GObM7z69jxBG7L+DfO6w97AME40NCybhudrFr9LN+jc=; b=HIjKHpiWigOrqy
	WEyve2e9CTQrvqBbbbI/HBQynNGY0DiRqO+tkFoaoLtK1+tUPWRthszEzF2G5H2KqQDsAaXz7bhKS
	ZNFYmWvW4B7n/RfZJjIF9/PfoAdLOVd8RxqcT81ZE5Nz+y3cGyBkATR/vKpahPnEly2hkPO+GuXri
	7WEWJb/QBJdql3AGpbUemAbb5pS37GPsFm/JADJ69yU/YiwJwwkZiRArsb3Ofle/iolF+ttWecjfp
	gKzNpnhD0RCP6XefwPMwrWK6Wxmo9mwMgTj3t0uV8sx5icgH5bCzDbsM0kcYRDHtwtI5noSOTvpOb
	KMDFROGhmrGQ+P2e9Keg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izKxP-00068k-S5; Wed, 05 Feb 2020 13:43:07 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKxH-00068H-Nb
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 13:43:01 +0000
Received: by mail-ua1-x941.google.com with SMTP id g13so844349uab.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Feb 2020 05:42:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=j9rkAz9JsRKbTzzLhxRsY/GQ17DXsUI3Y51yD200H4E=;
 b=pccnuVxP2RaWAG7OXczoRDZhpL3GnxM5zTQxU5hk4z4X4kHyNzrWFtq0zykVtx6O1p
 7j/nxnFIptR+xrh/Oh9uLGO2G2lNTOrBOA5Ymmy42QhnCVqjPL9Jn44Ty27OxT8C58eA
 46AmsAh5LoBKm0BaZSVVdcuLLbo1zv3UxMCWl656VW+WNuehOJSF1hAttlaL1+gSrXdk
 OQ7eU7bPkvT2ELC6DitZHz8kkwpjx0OfqJwuIuJuz1joAGCHn/LFrbxoWQcQsfHMcUwm
 P4XZJnXoLtCEfwPxvGecC3yMwtY/VSEqfvzg4YiLhJaOISWO2cwlDyQMUqsKLmbS2VJd
 VXsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=j9rkAz9JsRKbTzzLhxRsY/GQ17DXsUI3Y51yD200H4E=;
 b=mgffpgkQXtzU7djpJgA8oOHcUlki7VQEMzsTba/CBJaZTOJlhnejAvayHA6HIhgsLR
 /OvRIicQ1snGjhHHK5uNo1Nc8AAQDFXh/yn6Bl6SrZNQXIcoh0hDxuHbg8vxK+n09NhW
 5mhV8BKpZHTxs+2f2ceFN1fal9tok0nf+0V1p1eJ9Yfl/qDJLbNgjv3tJJoKPZD9jSqa
 dUnYo4gmdsWu9jSnhiZr/4bM5LtgEBMCdtJclz3zVxAShJi+O8dyfwrr5p/YRKDTyHwM
 Sl3tPaFVOqaTEVTdAfd+LGBiI7fqOkMh1Va3XJi58OuXkQNktzM+DgYSM/aCcfSZUl4E
 aSrw==
X-Gm-Message-State: APjAAAWTw+GR1AUqLZo0XXFMnzAjId7Z5zFY8BfUOQQa5seHyRIxpdr0
 qdRukTVnmT1XeQm1vFAQ+cIE4z6PmhnEYdKObp0=
X-Google-Smtp-Source: APXvYqz+Whqx+lw7PXEFaQk4u9l8K8m8wdbjT7nb6SSjE0D/xc3KHjWmGS4UlQzloFuV9ECj7FQiqO51X3t9oVxdwkI=
X-Received: by 2002:ab0:4aca:: with SMTP id t10mr21898590uae.89.1580910178199; 
 Wed, 05 Feb 2020 05:42:58 -0800 (PST)
MIME-Version: 1.0
References: <1580743613-29482-1-git-send-email-alin.nastac@technicolor.com>
 <CAJLcKsEWM3RBQQqGU9ESRAd=N7ObvdSSgAgNpewr52gmx+JD=A@mail.gmail.com>
 <CAF1oqRBa5vabU4Am+Q-Fqr+2mp-LUsLyjYqWzrzMnWSF3PQ4Cw@mail.gmail.com>
 <007e01d5dc23$b9107fd0$2b317f70$@adrianschmutzler.de>
 <CAF1oqRC6z3+YqpmByiyJ0x-2h5bcaE21HRHc4a6HvdCDaZd-xg@mail.gmail.com>
 <014901d5dc29$a8249fc0$f86ddf40$@adrianschmutzler.de>
In-Reply-To: <014901d5dc29$a8249fc0$f86ddf40$@adrianschmutzler.de>
From: =?UTF-8?B?QWxpbiBOxINzdGFj?= <alin.nastac@gmail.com>
Date: Wed, 5 Feb 2020 14:42:47 +0100
Message-ID: <CAF1oqRA_erf_ESCeAkw4fMfBSvKHSmpFBBF3Vw9BNo6v9OQ1vA@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_054259_795242_4DA5077D 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alin.nastac[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [netifd][PATCH] interface-ip: transfer prefix
 route ownership to kernel when IPv6 address becomes deprecated
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2luY2UgaXQgaGFzIGEgZGlmZmVyZW50IHRpdGxlLCBJIHByZXN1bWVkIHBhdGNod29yayBzaXRl
IHdpbGwgbm90CnVuZGVyc3RhbmQgaXMgdGhlIDJuZCB2ZXJzaW9uIG9mIHByZXZpb3VzIHBhdGNo
LgoKT24gV2VkLCBGZWIgNSwgMjAyMCBhdCAyOjM5IFBNIEFkcmlhbiBTY2htdXR6bGVyCjxtYWls
QGFkcmlhbnNjaG11dHpsZXIuZGU+IHdyb3RlOgo+Cj4gSGksCj4KPiBwbGVhc2UgdXNlIGEgInYy
IiBuZXh0IHRpbWUuCj4KPiBCZXN0Cj4KPiBBZHJpYW4KPgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0KPiA+IEZyb206IEFsaW4gTsSDc3RhYyBbbWFpbHRvOmFsaW4ubmFzdGFjQGdtYWls
LmNvbV0KPiA+IFNlbnQ6IE1pdHR3b2NoLCA1LiBGZWJydWFyIDIwMjAgMTQ6MzgKPiA+IFRvOiBB
ZHJpYW4gU2NobXV0emxlciA8bWFpbEBhZHJpYW5zY2htdXR6bGVyLmRlPgo+ID4gQ2M6IEhhbnMg
RGVkZWNrZXIgPGRlZGVja2VoQGdtYWlsLmNvbT47IG9wZW53cnQtZGV2ZWwgPG9wZW53cnQtCj4g
PiBkZXZlbEBsaXN0cy5vcGVud3J0Lm9yZz4KPiA+IFN1YmplY3Q6IFJlOiBbT3BlbldydC1EZXZl
bF0gW25ldGlmZF1bUEFUQ0hdIGludGVyZmFjZS1pcDogdHJhbnNmZXIgcHJlZml4IHJvdXRlCj4g
PiBvd25lcnNoaXAgdG8ga2VybmVsIHdoZW4gSVB2NiBhZGRyZXNzIGJlY29tZXMgZGVwcmVjYXRl
ZAo+ID4KPiA+IEhpIEFkcmlhbiwKPiA+Cj4gPiBUaGlzIHBhdGNoIGhhcyBiZWVuIHN1cGVyc2Vk
ZWQgYnkKPiA+IGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTIzMzg0NS8KPiA+
Cj4gPiBBbGluCj4gPgo+ID4gT24gV2VkLCBGZWIgNSwgMjAyMCBhdCAxOjU2IFBNIEFkcmlhbiBT
Y2htdXR6bGVyCj4gPiA8bWFpbEBhZHJpYW5zY2htdXR6bGVyLmRlPiB3cm90ZToKPiA+ID4KPiA+
ID4gSGksCj4gPiA+Cj4gPiA+IHdvcmtzIGZvciBtZSBhcyB3ZWxsLgo+ID4gPgo+ID4gPiBIb3dl
dmVyLCBJJ2QgcHJlZmVyIGEgc2hvcnRlciBjb21taXQgdGl0bGUsIGUuZy4KPiA+ID4KPiA+ID4g
aW50ZXJmYWNlLWlwOiB0cmFuc2ZlciBwcmVmaXggcm91dGUgb3duZXJzaGlwIGZvciBkZXByZWNh
dGVkIGlwdjZhZGRyIHRvIGtlcm5lbAo+ID4gPgo+ID4gPiBCZXN0Cj4gPiA+Cj4gPiA+IEFkcmlh
bgo+ID4gPgo+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiA+ID4gRnJvbTog
b3BlbndydC1kZXZlbCBbbWFpbHRvOm9wZW53cnQtZGV2ZWwtYm91bmNlc0BsaXN0cy5vcGVud3J0
Lm9yZ10gT24KPiA+ID4gPiBCZWhhbGYgT2YgQWxpbiBOYXN0YWMKPiA+ID4gPiBTZW50OiBNaXR0
d29jaCwgNS4gRmVicnVhciAyMDIwIDA5OjM0Cj4gPiA+ID4gVG86IEhhbnMgRGVkZWNrZXIgPGRl
ZGVja2VoQGdtYWlsLmNvbT4KPiA+ID4gPiBDYzogb3BlbndydC1kZXZlbCA8b3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZz4KPiA+ID4gPiBTdWJqZWN0OiBSZTogW09wZW5XcnQtRGV2ZWxd
IFtuZXRpZmRdW1BBVENIXSBpbnRlcmZhY2UtaXA6IHRyYW5zZmVyIHByZWZpeAo+ID4gPiByb3V0
ZQo+ID4gPiA+IG93bmVyc2hpcCB0byBrZXJuZWwgd2hlbiBJUHY2IGFkZHJlc3MgYmVjb21lcyBk
ZXByZWNhdGVkCj4gPiA+ID4KPiA+ID4gPiBIaSBIYW5zLAo+ID4gPiA+Cj4gPiA+ID4gT24gVHVl
LCBGZWIgNCwgMjAyMCBhdCAxMDo0OSBQTSBIYW5zIERlZGVja2VyIDxkZWRlY2tlaEBnbWFpbC5j
b20+Cj4gPiB3cm90ZToKPiA+ID4gPiA+Cj4gPiA+ID4gPiBIaSBBbGluLAo+ID4gPiA+ID4gT24g
TW9uLCBGZWIgMywgMjAyMCBhdCA0OjI3IFBNIEFsaW4gTmFzdGFjIDxhbGluLm5hc3RhY0BnbWFp
bC5jb20+Cj4gPiB3cm90ZToKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gRnJvbTogQWxpbiBOYXN0
YWMgPGFsaW4ubmFzdGFjQGdtYWlsLmNvbT4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gV2hlbiBu
ZXRpZmQgbWFuYWdlcyB0aGUgcHJlZml4IHJvdXRlIGRpcmVjdGx5LCBpdCB3aWxsIHJlbW92ZSBp
dAo+ID4gPiA+ID4gPiB0aGUgbW9tZW50IHByZWZpeCBnZXRzIGRlcHJlY2F0ZWQuIFRoaXMgd2ls
bCBtYWtlIGl0IGltcG9zc2libGUKPiA+ID4gPiA+ID4gZm9yIHRoZSB0YXJnZXQgdG8gc2VuZCBJ
Q01QdjYgZXJyb3JzIGJhY2sgdG8gTEFOIGRldmljZXMgc3RpbGwKPiA+ID4gPiA+ID4gdXNpbmcg
dGhlIGRlcHJlY2F0ZWQgcHJlZml4LCB0aHVzIGJyZWFraW5nIHRoZSBMLTE0IHJlcXVpcmVtZW50
Cj4gPiA+ID4gPiA+IG9mIFJGQyA3MDg0Lgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBBbGluIE5hc3RhYyA8YWxpbi5uYXN0YWNAZ21haWwuY29tPgo+ID4gPiA+ID4gVGhl
IHBhdGNoIGZhaWxzIHRvIGFwcGx5IHdpdGggdGhlIGZvbGxvd2luZyBlcnJvciBtZXNzYWdlIDoK
PiA+ID4gPiA+Cj4gPiA+ID4gPiBBcHBseWluZzogaW50ZXJmYWNlLWlwOiB0cmFuc2ZlciBwcmVm
aXggcm91dGUgb3duZXJzaGlwIHRvIGtlcm5lbCB3aGVuCj4gPiA+ID4gPiBJUHY2IGFkZHJlc3Mg
YmVjb21lcyBkZXByZWNhdGVkCj4gPiA+ID4gPiBlcnJvcjogc2hhMSBpbmZvcm1hdGlvbiBpcyBs
YWNraW5nIG9yIHVzZWxlc3MgKGludGVyZmFjZS1pcC5jKS4KPiA+ID4gPiA+IGVycm9yOiBjb3Vs
ZCBub3QgYnVpbGQgZmFrZSBhbmNlc3Rvcgo+ID4gPiA+ID4gUGF0Y2ggZmFpbGVkIGF0IDAwMDEg
aW50ZXJmYWNlLWlwOiB0cmFuc2ZlciBwcmVmaXggcm91dGUgb3duZXJzaGlwIHRvCj4gPiA+ID4g
PiBrZXJuZWwgd2hlbiBJUHY2IGFkZHJlc3MgYmVjb21lcyBkZXByZWNhdGVkCj4gPiA+ID4gPgo+
ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICByb3V0ZS5hZGRyID0gYWRkci5hZGRy
Owo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgfQo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiAr
ICAgICAgICAgICAgICAgYWRkci5mbGFncyB8PSBERVZBRERSX09GRkxJTks7Cj4gPiA+ID4gPiA+
ICAgICAgICAgICAgICAgICBpZiAoc3lzdGVtX2FkZF9hZGRyZXNzKGwzX2Rvd25saW5rLCAmYWRk
cikpCj4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybjsKPiA+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gLS0KPiA+ID4gPiA+ID4gMi43LjQKPiA+ID4gPiA+ID4KPiA+ID4gPgo+
ID4gPiA+IEkndmUgZG93bmxvYWRlZCB0aGUgcGF0Y2ggZnJvbQo+ID4gPiA+IGh0dHBzOi8vcGF0
Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTIzMjg4NS8gYW5kIGFwcGxpZWQgaXQKPiA+ID4gPiBz
dWNjZXNzZnVsbHkgd2l0aCBhIGdpdCBhbSBjb21tYW5kIGxpbmU6Cj4gPiA+ID4KPiA+ID4gPiBu
YXN0YWNhQGNwbHgxMDM3Oi91c3IvbG9jYWxkaXNrL29wZW53cnQvbmV0aWZkJCBnaXQgYW0KPiA+
ID4gPiB+L0Rvd25sb2Fkcy9PcGVuV3J0LURldmVsLW5ldGlmZC1pbnRlcmZhY2UtaXAtdHJhbnNm
ZXItcHJlZml4LXJvdXRlLQo+ID4gPiA+IG93bmVyc2hpcC10by1rZXJuZWwtd2hlbi1JUHY2LWFk
ZHJlc3MtYmVjb21lcwo+ID4gPiA+IC1kZXByZWNhdGVkLnBhdGNoCj4gPiA+ID4gQXBwbHlpbmc6
IGludGVyZmFjZS1pcDogdHJhbnNmZXIgcHJlZml4IHJvdXRlIG93bmVyc2hpcCB0byBrZXJuZWwg
d2hlbgo+ID4gPiA+IElQdjYgYWRkcmVzcyBiZWNvbWVzIGRlcHJlY2F0ZWQKPiA+ID4gPgo+ID4g
PiA+IEFsaW4KPiA+ID4gPgo+ID4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gPiA+ID4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+ID4g
PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gPiA+ID4gaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPiA+ID4KPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
