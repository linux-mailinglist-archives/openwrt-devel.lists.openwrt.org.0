Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C9911AA56
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 12:57:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewVABSRNAtK7WJUM2dYQaAiI1a6tFobS7iRFtVPvpNU=; b=FmxzaI7HaKvi11
	HXdh9OOzmid2mqlhLbmb9vyZA0EhYJidUqL22dZVOfiVdqijzYXScB3+onEMnw+lz0PCuev8A1u+/
	cmNUqRh2BCIIIVZVmyMprcFvPHk+T//CFM2mQrPqGzOxR/wWS89hRSRYOqTVDMcbXPFj/PYz8tyVy
	2bCstpEiPEmknuS0qxL9kYFgqx/xOI+9CkfKxfuuLGkJ6cOLSe3sqo0O1jFqv2vwjuPdh5mf6/yi+
	cc0yx0WXR9imYYczdeAlNcum7X1HYqwUrF/En70N5fOndE9Kx3oHGTiQQJnv0zYYWJKEcaumcj8bX
	s9diCuwITi3Q+8rSnr8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if0cC-0004Z2-Jq; Wed, 11 Dec 2019 11:57:12 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if0c5-0004Yh-2g
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 11:57:06 +0000
Received: by mail-lj1-x241.google.com with SMTP id a13so23716827ljm.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 03:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=qztPmqje0TNTDhFzo7YUgALHp3Nvp5mvlgfy1i/C4Z4=;
 b=V/tPHTM73Lb1H01wsRYojXGs9Oj1d2CcrBdPBQ5/+BuqsQyCRcN6OskYq7NtiDrSli
 6laHekKX35kW2jJnPx36J2PYVtTcdrYLlkh1dF0lVQZLC/gIFDaK3hnWmJzprp7cXNpJ
 Cl3EslLfRb28qZGp+o8B6cH/hb96edBgaznY5ZaX5C8/KWS3/+vv1YQgUheONRBc7OK/
 U+lm91LFRTA9RHGiD4hDM0jeASTXSqICfPclqf5FEep72QdQPHIvaZj39DgYS+M1Ha/h
 5h/kH8ivG+NfG7t4vDCuOkzmJZxNzoWI7D4wmprqQcJ+7Wof2fJ4QXlat16X0Axl0/E8
 jR8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=qztPmqje0TNTDhFzo7YUgALHp3Nvp5mvlgfy1i/C4Z4=;
 b=G22RIsFJnEdIEjMyN5wJq7HXOcMArZyc+eKYEXOCF+Lo1D/Q0pDvrc57hrHYTV4SqA
 /4ceRZkgxbaQUpLzPJusMYO+knVYf+uxIQe3JRMhFRuNebuX95FbFa5j3SCpeM4/1YYz
 /Zx2WM/ZtacrLZurgjSy8lsX48/6hmHxQQYq8jtvEl1Pn6pCi5hHJqRD4PYXp0XZD9//
 TytVBZ2k45O0vuGU00tze/92eBMxh1leRnqAlktDRjRmIwNJCNOPbwkK3vyMboSmq1g3
 OKLMnzdKjUrkYt21/TtQ2Sr3UoHuuTQyz14btlzNX6qHoDdCWed8kos2WMmI5KjcXb13
 qaeQ==
X-Gm-Message-State: APjAAAU/Cf+qZ1g84rTpmX7zs/FrScFhov5BNZYG0ki5OxIJ4kziqbBv
 A6S85BwZkmK7psVDhlMrK648t8mE
X-Google-Smtp-Source: APXvYqxrv3gbIVlOc4U9fh1GR5jEb5Nb03La7suxFpc123H+IyiXDmkj5XLXgPm27K2qWcLKqDaVbg==
X-Received: by 2002:a2e:998a:: with SMTP id w10mr1818688lji.241.1576065423480; 
 Wed, 11 Dec 2019 03:57:03 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id z9sm999328ljm.40.2019.12.11.03.57.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 03:57:02 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBBBv0wT011435; Wed, 11 Dec 2019 14:57:00 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBBBuxXM011433;
 Wed, 11 Dec 2019 14:56:59 +0300
Date: Wed, 11 Dec 2019 14:56:59 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20191211115659.GM11070@home.paul.comp>
References: <20191210142420.30748-1-fercerpav@gmail.com>
 <20191210144213.GH71465@meh.true.cz>
 <20191211110352.GL11070@home.paul.comp>
 <20191211114722.GA11343@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211114722.GA11343@meh.true.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_035705_121106_7CF97EF0 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [RFC][PATCH] base-files: send informational UDP
 message each second waiting
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCBEZWMgMTEsIDIwMTkgYXQgMTI6NDc6MjJQTSArMDEwMCwgUGV0ciDFoHRldGlhciB3
cm90ZToKPiBQYXVsIEZlcnRzZXIgPGZlcmNlcnBhdkBnbWFpbC5jb20+IFsyMDE5LTEyLTExIDE0
OjAzOjUzXToKPiA+IFdhaXRpbmcgd2l0aCBhIHRpbWVvdXQgcG9zZXMgYSBxdWVzdGlvbiBvZiB3
aGF0IHRoYXQgdGltZW91dCBzaG91bGQgYmUgc2V0Cj4gPiB0bzsgYW5kIGlmIHRoYXQncyByZWFz
b25hYmxlIHRvIGV4dGVuZCBjdXJyZW50IDIgc2Vjb25kcyB3aXRoIGFueQo+ID4gc2lnbmlmaWNh
bnQgYW1vdW50Lgo+IAo+IEFzIHlvdSd2ZSB3aXRuZXNzZWQgdGhpcyBkZWZhdWx0IHZhbHVlIGRv
ZXNuJ3Qgd29yayB3ZWxsIGluIHNvbWUgY2FzZXMuCgpUaGUgcHJvYmxlbSBJIGZhY2VkIHdhcyBi
ZWNhdXNlIHRoZSBtZXNzYWdlIGlzIHNlbnQgb25seSBvbmNlIF9iZWZvcmVfCnRpbWVvdXQgc3Rh
cnRzIHRpY2tpbmcsIHNvIG5vIG1hdHRlciB3aGF0IGl0J3Mgc2V0IHRvLCB0aGUgbWVzc2FnZQp3
b3VsZG4ndCBiZSB0aGVyZS4KCj4gPiBDdXJyZW50IGRvY3VtZW50YXRpb24gc2F5cyBhIG1lc3Nh
Z2Ugc2hvdWxkIGJlIHNlbnQuCj4gCj4gU28gbm93LCB0aGlzIHdvdWxkIG5lZWQgdG8gYmUgcmVw
aHJhc2VkIGZyb20gY3VycmVudCAwIG9yIDEsIHRvIDAgdG8gTiwgd2hlcmUKPiBOIGRlcGVuZHMg
b24gY29uZmlnIHNldHRpbmdzICh0aW1lb3V0IHZhbHVlKS4KCkRvY3VtZW50YXRpb24gWzBdIHNh
eXMgIldhaXQgKHdpdGggYSBwYWNrZXQgc25pZmZlcikgZm9yIGEgc3BlY2lhbApicm9hZGNhc3Qg
cGFja2V0IGFuZCBwcmVzcyBhIGJ1dHRvbiIuIFNvIEkgdGhpbmsgd2l0aCB0aGlzIHBhdGNoCmRv
Y3VtZW50YXRpb24gY2hhbmdlcyBhcmUgbm90IHN0cmljdGx5IG5lY2Vzc2FyeSwgaXQgc3RpbGwg
d29ya3MgdGhlCnNhbWUgd2F5LCB5b3Ugd2FpdCBmb3IgdGhlIHBhY2tldCBhbmQgcHJlc3MgYSBi
dXR0b24uCgo+ID4gRG8geW91IGhhdmUgYW55IG90aGVyIHBvc3NpYmxlIHNvbHV0aW9uIGluIG1p
bmQ/Cj4gCj4gKG5vcGUsIGp1c3QgdGhpbmtpbmcgYWxvdWQpCj4gCj4gSWYgdGhlIGZpeGVkIHZh
bHVlIGRvZXNuJ3Qgd29yayBmb3IgYWxsIHVzZSBjYXNlcywgdGhlbiBpdHMgbm90IGZpeGVkIHZh
cmlhYmxlCj4gYW55bW9yZSBhbmQgc2hvdWxkIGJlIHZhcmlhYmxlLCB0aHVzIGNvbmZpZyBvcHRp
b24sIHByb2JhYmx5IGZpbmV0dW5lZCBwZXIKPiB0YXJnZXQvZGV2aWNlLgoKQ3VycmVudGx5IGFs
bCBkZXZpY2VzIHdhaXQgZm9yIDIgc2Vjb25kcyBkdXJpbmcgbm9ybWFsIGJvb3R1cCBubwptYXR0
ZXIgd2hhdC4gV2l0aG91dCBteSBwYXRjaCBhbnkgdmFsdWUgZm9yIHRoYXQgdGltZW91dCB3b3Vs
ZG4ndCBoZWxwCndpdGggdGhlIFVEUCBtZXNzYWdlLgoKWzBdIGh0dHBzOi8vb3BlbndydC5vcmcv
ZG9jcy9ndWlkZS11c2VyL3Ryb3VibGVzaG9vdGluZy9mYWlsc2FmZV9hbmRfZmFjdG9yeV9yZXNl
dAoKLS0gCkJlIGZyZWUsIHVzZSBmcmVlIChodHRwOi8vd3d3LmdudS5vcmcvcGhpbG9zb3BoeS9m
cmVlLXN3Lmh0bWwpIHNvZnR3YXJlIQptYWlsdG86ZmVyY2VycGF2QGdtYWlsLmNvbQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
