Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2137DDC5
	for <lists+openwrt-devel@lfdr.de>; Thu,  1 Aug 2019 16:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODzNAxSXAT2HWeDw8yHSY9a8aXcXC7gJKxvjhE7vCL0=; b=dMKD2RhI+fvJTb
	HWvxkR/1ZHR/YzI8AkAe52c4n3xEQ7ORFlzrPXP6Xq8q3HvuaIGrzghXyDjScGfDhtlSr0f5nIf/c
	eOJC8GXV60teLp8yz+3h+dHMspYRaNDN+w/OWiQkBTQ7e58O9Vs9BUOqgKWOujgLlsBhA/PEoxCEj
	6wgiq3PapZK3gIpXJu/AAf8nEq6geglVkm0QxQXaSiLZ4MIdMzZl31JbXJSOANG2//L+tbEOKXe8J
	v5UP4AObgYRKBd4laNma6GT+Pg37dWskax75cuQlc76DFbWlgQBmynaT96a3MpBYWhX3q/7y/NGyu
	zG8k8WsP02X14YgVZG0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBzm-0007TH-JP; Thu, 01 Aug 2019 14:23:54 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBzW-0007KT-NH
 for openwrt-devel@lists.openwrt.org; Thu, 01 Aug 2019 14:23:40 +0000
Received: by mail-io1-xd2e.google.com with SMTP id i10so31403611iol.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 01 Aug 2019 07:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+V6rtCA0WAkOVPzUgLf/hWxO95FS3HvGLLde3Unu4Bk=;
 b=osjGxo/HgjJ+m8BbayPCcH8eXKU8UE3vecoUctrNhsyBF1vUVKIGGcfVp5VuaMETAq
 gVXBZu+BcYTEG7OKRTpXOPzHap0IQ87GuTCleqCM0zj1PrRlqgfYDZaXADg4P6Tzsp00
 uxrBSVT5ik4k0dA77M6LC+JJdVe2rKAEXvIZW9xKndrr/r3+O7Xv32SdrTG9qcNw0Sru
 x11cjwhBs4FBOZ9BGyL5Qe1/7asHIVELkGvpI+Ez9zn19xrQ6bmOPPqUgjzkD3MIGvVy
 TLx1wNLs0aMPBPFP6+HX2unnP18RjeTprawUT8eIx8++Z6778aAY/q25fmRCIA2rc8vM
 2zOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+V6rtCA0WAkOVPzUgLf/hWxO95FS3HvGLLde3Unu4Bk=;
 b=jDq5JDANbad/6xgXjypUblzqOkKVcgvXu2eyzaYIJTKmZSpaMG5mF5v23BW6yVUEYL
 9dJ3kHqgXNAfaO/85q8dQyDlIdgJ7uvNUHou67I3m3NoVtQSp19epRoWLcJhOtxpfGaD
 9372LdFpV9wUtiYRiKz1ps3gEnIFgtJySE3Cky0pLC99zTSY6xJs0Y87So3L79r8xddi
 jYoIZnwQacprXHe/p8jW9V3DKaGQNaH+JPOjstcuv407ukKfDVX+4SI8EKj4Ox2pNndq
 i8C3t3LGwj42Qz1+CmE29SKRNEtonu4ibfntZYMn6fG3DfmJFNfjXwYqllgNJwZOYn0D
 V1zQ==
X-Gm-Message-State: APjAAAUcZnByzwzIBxdF0ntwYRoOnfxwB9nZdNukcfBUjdeodvHFXEW/
 s5Yuj9DJv30a9rpD6QffRjzbUT9nIjcJxNd+Nh4=
X-Google-Smtp-Source: APXvYqyg8wFsXN/+FIOV6AjHyT92SRpRvYVG5DChN2sFZ2zM/dUaSFDncPM01hzpSVqGI+ZmdXTA+Dsuy8bsj7CNV04=
X-Received: by 2002:a02:a581:: with SMTP id b1mr9752679jam.84.1564669416717;
 Thu, 01 Aug 2019 07:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190727022302.12656-1-champetier.etienne@gmail.com>
 <20190801085107.GK74752@meh.true.cz>
In-Reply-To: <20190801085107.GK74752@meh.true.cz>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Thu, 1 Aug 2019 07:23:18 -0700
Message-ID: <CAOdf3gp-oR2B6qy-qSnxAFWdLfQ+W-+zxrjixc+EGc=6swepgA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_072338_803064_1274C17E 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] [RFC] kernel: disable EAP local hack
 when using group_fwd_mask
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
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKCkxlIGpldS4gMSBhb8O7dCAyMDE5IMOgIDAxOjUxLCBQZXRyIMWgdGV0aWFyIDx5
bmV6ekB0cnVlLmN6PiBhIMOpY3JpdCA6Cj4KPiBFdGllbm5lIENoYW1wZXRpZXIgPGNoYW1wZXRp
ZXIuZXRpZW5uZUBnbWFpbC5jb20+IFsyMDE5LTA3LTI2IDE5OjIzOjAyXToKPgo+IEhpLAo+Cj4g
SSd2ZSBub3RpY2VkIHlvdXIgcmVxdWVzdCBmb3IgZmVlZGJhY2sgb24gSVJDLgpUaGFua3MgZm9y
IHRha2luZyBzb21lIHRpbWUKCj4KPiA+IGFuZCA2NDAtYnJpZGdlLW9ubHktYWNjZXB0LUVBUC1s
b2NhbGx5LnBhdGNoIGhhY2sgaXMgdGhlcmUgdG8gcHJldmVudAo+ID4gYnJpZGdlcyBmcm9tIGZv
cndhcmRpbmcgdGhlc2UgRUFQIGZyYW1lcwo+Cj4gaXQgd291bGQgYmUgbmljZSB0byBrbm93IGlm
IHRoaXMgcGF0Y2ggaXMgc3RpbGwgbmVlZGVkIHNvIHdlIGNvdWxkIHBvc3NpYmx5Cj4gcmVtb3Zl
WzFdIGl0IGZyb20gNC4xOSBrZXJuZWwuCgpJIHJldml2ZWQgdGhpcyBvbGQgZW1haWwgdGhyZWFk
IGxhc3Qgd2VlayB0byB0cnkgdG8gZ2V0IG1vcmUKaW5mb3JtYXRpb24gZnJvbSBGZWxpeAooaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL29wZW53cnQtZGV2ZWwvMjAxOS1KdWx5
LzAxODEyNy5odG1sKQpJZiB0aGUgZml4IHdhcyB0byB3b3JrYXJvdW5kIGEgY2xpZW50IGJ1ZyB3
ZSBtaWdodCB3YW50IHRvIGtlZXAgaXQsCmVsc2UgbWF5YmUgd2UgY291bGQgcmV3b3JrIGl0IGFu
ZCBhZGQgYSB3YXJuX29uY2UgaWYgdGhpcyBoYWNrIHByZXZlbnQKYSBFQVAgZnJhbWUgZnJvbSBi
ZWluZyBmb3J3YXJkZWQKCj4KPiA+IC0rICAgIGlmIChza2ItPnByb3RvY29sID09IGh0b25zKEVU
SF9QX1BBRSkpCj4gPiArKyAgICBpZiAoc2tiLT5wcm90b2NvbCA9PSBodG9ucyhFVEhfUF9QQUUp
ICYmICEoYnItPmdyb3VwX2Z3ZF9tYXNrICYgKDF1IDw8IDMpKSkKPiA+ICArICAgICAgICAgICAg
cmV0dXJuIGJyX3Bhc3NfZnJhbWVfdXAoc2tiKTsKPgo+IFRoaXMgdXNhZ2Ugb2YgbWFnaWMgbnVt
YmVycyBpcyB1c3VhbGx5IGEgd2FybiBzaWduIHRvIG1lLCBzbyBJIHdlbnQgYWhlYWQgYW5kCj4g
cmVhZCB0aGUgc3Vycm91bmRpbmcgY29kZSBhbmQgaXQgc2VlbXMgdG8gbWUsIHRoYXQgeW91IHBy
b2JhYmx5IHdhbnRlZAo+IHNvbWV0aGluZyBsaWtlIHRoaXMgaW5zdGVhZDoKPgo+ICAgdTE2IGZ3
ZF9tYXNrID0gcC0+YnItPmdyb3VwX2Z3ZF9tYXNrX3JlcXVpcmVkOwo+ICAgZndkX21hc2sgfD0g
cC0+YnItPmdyb3VwX2Z3ZF9tYXNrOwo+ICAgY29uc3QgdW5zaWduZWQgY2hhciAqZGVzdCA9IGV0
aF9oZHIoc2tiKS0+aF9kZXN0Owo+Cj4gICBpZiAoc2tiLT5wcm90b2NvbCA9PSBodG9ucyhFVEhf
UF9QQUUpICYmICEoZndkX21hc2sgJiAoMXUgPDwgZGVzdFs1XSkpKQo+ICAgICAgICAgICByZXR1
cm4gYnJfcGFzc19mcmFtZV91cChza2IpOwoKQWN0dWFsbHkgbm8sIGxldCBtZSB0cnkgdG8gZXhw
bGFpbiBpdCBhZ2FpbgpCeSBkZWZhdWx0IGEgYnJpZGdlIGZvcndhcmQgZXZlcnl0aGluZyBleGNl
cHQgMDEtODAtQzItMDAtMDAtWFgsIHdoaWNoCmluY2x1ZGVzIDAxLTgwLUMyLTAwLTAwLTAzLCB3
aGljaCBpcyB0aGUgbXVsdGljYXN0IG1hYyBmb3IgRUFQIGZyYW1lcy4KRm9yIHdpZmksIEVBUCBh
cmUgbm90IHVzaW5nIG11bHRpY2FzdCBidXQgdW5pY2FzdCAoaXQncyB3aGF0IEkKdW5kZXJzdG9v
ZCByZWFkaW5nIHZhcmlvdXMgZW1haWwgdGhyZWFkLCBJIGhhdmVuJ3QgZG91YmxlIGNoZWNrZWQK
dGhhdCkuCgpXaGF0IEkgdGhpbmsgYW4gYWRtaW4gd2FudHMgd2hlbiBoZSBkbwplY2hvIDggPiAv
c3lzL2NsYXNzL25ldC9iclgvYnJpZGdlL2dyb3VwX2Z3ZF9tYXNrCmlzIG5vdCB0byBhbGxvdyAw
MS04MC1DMi0wMC0wMC0wMyBmb3J3YXJkaW5nLCBidXQgYWxsb3cgYWxsIEVBUCBmb3J3YXJkaW5n
LgpZb3VyIHBhdGNoIHdvdWxkIGFsbG93IG11bHRpY2FzdCBFQVAgZm9yd2FyZGluZyBidXQgbm90
IHVuaWNhc3QgRUFQCmZvcndhcmRpbmcsIGV4Y2VwdCBpZiBkZXN0IG1hYyBlbmRzIHdpdGggMDMs
CndoaWNoIHdvdWxkIGJlIHZlcnkgc3VycHJpc2luZy4KCkFub3RoZXIgYXBwcm9hY2ggd291bGQg
YmUgdG8gYWRkIGEgc2V0dGluZyBsaWtlCidkaXNhYmxlLWVhcC1sb2NhbC1oYWNrJyB0byBlbmFi
bGUvZGlzYWJsZSB0aGlzIGhhY2ssIHdoYXQgZG8geW91CnByZWZlciA/CgpFdGllbm5lCgoKPgo+
IDEuIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvODg0NTE4Lwo+Cj4gLS0geW5l
enoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
