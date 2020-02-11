Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56099159ACC
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 21:56:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ghpD5KR0BBsuiM+vL57/T+kYGAyrYFaMykwfeBcn9eM=; b=ud2pAiCdSfw4dB
	dEQcxzmIkKirMgHJ0mgnRe5SB4tdRZOURuI41OLnzOefsE86ROUeR5PjxpoVYLzEthggTlp7th5/U
	kbNgBcchQ/+mmniwcRPjl5Sh6oTiEZKhgfWB3k53XRYrSmI2SttU/YErNg3rOb0wWeklGuuFoocZz
	1Xu0J4P8FSoTBJN+kuYDaHxJ8MXhb0fHZpFhnA04qrYnL/tVsmdL5keGyMLRv9KEm1cN/r2lg7Jlw
	Clj4S6/PVhHcc/3COnLOqQ93C2Vb0pU4B7xdYMeJYN4vpnr42896PyX1I5gGS7HJIKyRq78x7rfyF
	QJHbKdiLTNnvFe54xdxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1caB-00081l-HI; Tue, 11 Feb 2020 20:56:35 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ca5-00081D-Kp
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 20:56:31 +0000
Received: by mail-oi1-x243.google.com with SMTP id q84so14229106oic.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Feb 2020 12:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zBxIgQcWAKn+/O4OlK4tyRnvDh/7gC1fCQIGVs4AID8=;
 b=JyAwcBAeVrXI4dFlkDsReOoNFQPWwF+t4YeVr76Q+u/Kz7wFlLgmRAqQHCGYh4/sIE
 yIt2dvZNrhP2Tq03FJuqur4jtey/AX3/xCm88Ogb/l/2y52eOphb8Bl/UjEJ4olCLXN2
 gUYf3XFX5mkw6nnZ8pfxYJnSlUSn4QgycLUh+6P0W6vUH7CcklNZGI2TVSU422Ejnk5q
 nlfDg6FZ+jbZoLveEssz4/JqlbE5xkBK8sH4tiimizaXOaKD3Z+uxpdhpdzL62yNG0hr
 rwZ+1jXQOjLGVqhQLFAUBM5GRfkfdz2bTfbxeF8zLdwQo6NMkz3RzflYh2ufKL0tjvLZ
 cZ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zBxIgQcWAKn+/O4OlK4tyRnvDh/7gC1fCQIGVs4AID8=;
 b=PC3BJKkp04eOzXuwOELQlZGUOaNuT9yfAIvRZbAmu3YOnMB1+gvl0jsZ6ntpqm3DPG
 cV9usvFbiiA7LXz+IQC9N5OeiISW0tVF6MkQNsozvyVTBjnDtsie9Op2Jrrbs+vdWxNn
 xZelqTxvb8vMU8BGdmLmehaJOctNJ91Tdw9a2yIF1BUW9c2VrWYiZydYC4nvetW4CU9x
 p46K4b/qRpFmNwnAjfNoWR7nNbIcCFo8/EErtKBN7KstPCopUNtzrRz8gMpK/TqxQ8FV
 6iUxB6vbl3WBVcZozSheETpZ5hvr7X62iSLjmuqjmty3HPCdE1eNG+zRkz6ZALeLILnV
 q9/g==
X-Gm-Message-State: APjAAAVAVeQ9mhgdf7lcl2CwqRs1OI2XALFbLFAPj0KSb5gmI2qzEAQy
 DpwBhq7xi4ov3hoMGVtLm/eeFxHAF0wSx2w/8nlAdwam
X-Google-Smtp-Source: APXvYqwwyrrvEn6CsxxxCybMl48AIrku732X2gg+7PAFfdW+9X/mkyzZ9o1kEL8bgPYoRiGCiBj6TAoPGWIijls4mzE=
X-Received: by 2002:aca:fcd4:: with SMTP id a203mr3920862oii.167.1581454584600; 
 Tue, 11 Feb 2020 12:56:24 -0800 (PST)
MIME-Version: 1.0
References: <20191029172328.85861-1-rosenp@gmail.com>
 <20200211184812.GA6852@meh.true.cz>
In-Reply-To: <20200211184812.GA6852@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Tue, 11 Feb 2020 12:56:13 -0800
Message-ID: <CAKxU2N_kgnhT8qitbJWmg9+yPc2DXdVEZvS3VY3Nh6542Wxbww@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_125629_708463_7B8BECC0 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCHv2 1/2] ramips: ethernet: Fix NAPI weight
 for non mt7621 devices
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

T24gVHVlLCBGZWIgMTEsIDIwMjAgYXQgMTA6NDggQU0gUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4gd3JvdGU6Cj4KPiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4gWzIwMTktMTAt
MjkgMTA6MjM6MjddOgo+Cj4gPiBNeSBvcmlnaW5hbCBmaXggd2FzIHRvIG1ha2UgdGhlIGNvZGUg
ZG8gMTYgKiA0IGFzIDY0IGlzIHRoZSBsaW1pdCBmb3IgTkFQSQo+ID4gd2VpZ2h0LiBIb3dldmVy
IHRoaXMgYWxzbyByZWR1Y2VzIHRoZSB3ZWlnaHQgZm9yIG5vbiBtdDc2MjEgZGV2aWNlcy4KPiA+
Cj4gPiBDaGFuZ2VkIHRoZSBtdWx0aXBsaWVyIHRvIDIgaW5zdGVhZC4KPiA+Cj4gPiBGaXhlczog
ZGNkYzI4ODBiNgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21h
aWwuY29tPgo+ID4gLS0tCj4gPiAgdjI6IEFkZGVkIEZpeGVzIGNvbW1lbnQuCj4gPiAgLi4uL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMgICAgICAgICAgIHwgOCAr
KysrLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMvZmlsZXMtNC4xNC9k
cml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jIGIvdGFyZ2V0L2xpbnV4
L3JhbWlwcy9maWxlcy00LjE0L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhf
c29jLmMKPiA+IGluZGV4IDAwZTg0YmJjZmIuLjkxOTc0YTQ2MWMgMTAwNjQ0Cj4gPiAtLS0gYS90
YXJnZXQvbGludXgvcmFtaXBzL2ZpbGVzLTQuMTQvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0
ZWsvbXRrX2V0aF9zb2MuYwo+ID4gKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9maWxlcy00LjE0
L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210a19ldGhfc29jLmMKPiA+IEBAIC0xNjYz
LDExICsxNjYzLDExIEBAIHN0YXRpYyBpbnQgZmVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPiA+ICAgICAgIElOSVRfV09SSygmcHJpdi0+cGVuZGluZ193b3JrLCBmZV9wZW5k
aW5nX3dvcmspOwo+ID4gICAgICAgdTY0X3N0YXRzX2luaXQoJnByaXYtPmh3X3N0YXRzLT5zeW5j
cCk7Cj4gPgo+ID4gLSAgICAgbmFwaV93ZWlnaHQgPSAxNjsKPiA+ICsgICAgIG5hcGlfd2VpZ2h0
ID0gMzI7Cj4gPiAgICAgICBpZiAocHJpdi0+ZmxhZ3MgJiBGRV9GTEFHX05BUElfV0VJR0hUKSB7
Cj4gPiAtICAgICAgICAgICAgIG5hcGlfd2VpZ2h0ICo9IDQ7Cj4gPiArICAgICAgICAgICAgIG5h
cGlfd2VpZ2h0ICo9IDI7Cj4KPiBBYm92ZSBjaGFuZ2VzIG1ha2VzIHNlbnNlIGFuZCBjb3JyZXNw
b25kcyB3aXRoIHRoZSBjb21taXQgZGVzY3JpcHRpb24gYW5kIHdpdGgKPiBjaGFuZ2UgaW4gY29t
bWl0IGRjZGMyODgwYjYwNSAoInJhbWlwczogcmVkdWNlIG5hcGlfd2VpZ2h0IGluIHRoZSBldGhl
cm5ldAo+IGRyaXZlci4iKQo+Cj4gPiAtICAgICAgICAgICAgIHByaXYtPnR4X3JpbmcudHhfcmlu
Z19zaXplICo9IDQ7Cj4gPiAtICAgICAgICAgICAgIHByaXYtPnJ4X3JpbmcucnhfcmluZ19zaXpl
ICo9IDQ7Cj4gPiArICAgICAgICAgICAgIHByaXYtPnR4X3JpbmcudHhfcmluZ19zaXplICo9IDI7
Cj4gPiArICAgICAgICAgICAgIHByaXYtPnJ4X3JpbmcucnhfcmluZ19zaXplICo9IDI7CmkgZG9u
J3QgaGF2ZSB0aGUgaGFyZHdhcmUgYW55bW9yZSwgYnV0IEkgcmVtZW1iZXIgdGhlIHNpemVzIGJl
aW5nIGV4Y2Vzc2l2ZS4KClRoZSBjb2RlIHNheXMgdGhpcyBnZXRzIGFzc2lnbmVkIHRvIEJJVCgx
MCksIHdoaWNoIHNlZW1zIGV4Y2Vzc2l2ZS4uLgo+Cj4gVGhpcyBjaGFuZ2VzIGRvbid0Lgo+Cj4g
LS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
