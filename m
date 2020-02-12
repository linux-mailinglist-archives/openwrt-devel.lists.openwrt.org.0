Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C661915AE96
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 18:18:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mPwYO48VyQLOGWODL+Fp8YjmsWHTI5poLuU7SS4Lzw=; b=ONNo5SiifPtEnK
	g3vGSK4IoSDC7KEY5w2q/TUoe00ULmb9crDJFUZnUHbk3dOofCur8yeXujQQp+ouwUfyBS5w4qdWO
	ET1GoGGPs7wur/5uk0t96n5yf3L+8o9oo1XlQEE9+YIGPRyTxW2Cth+gEIKt9OxbzBg7ldYgUtkvc
	jIGgDZHfKaxPDrFKwFlNHIr2qIqLhTuZO5hUlPu49GLiCWxkBCfuCj7ZB0Sinab0zaXyEmIBxSuSD
	2tI+nAva8PeMSTEqzpO8GprPzNxDTt0ckTt9YWdVeluBYKzYXdNHwuUdSkjEo9uN+1ZZBSAX/c5Pc
	kACx0m1MhwJHNunhV9kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1veD-0005tj-DB; Wed, 12 Feb 2020 17:18:01 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ve4-0005tP-El
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 17:17:54 +0000
Received: by mail-ot1-x32c.google.com with SMTP id h9so2652320otj.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Feb 2020 09:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hp4ZqKJFgK4uLa1fCKeYX3qAN/EqBPSq1GfaFFrBuVs=;
 b=K+BFW6jsEpAf2UEDhigWOWIIZ0q0id8oAGzy4n+6uOv9W4IwoJEaQhuWX0faOMFglB
 Mc2rfU/RKp+AOd+1oOmFHFOEfoMJQ5f8it0SDylrl9lRTbrgCpdid7oFU1TI9qviseyv
 nISjtGxoNsDLBkmQDLnpP2OtS5HQwG1tvZ2KzF6HR6YombGF8vPK3oynM/xsavJAsYdf
 ATbSYsjHyuj91x0jma05xwqBI27nRz4NTQn8JXIeIufyHZ21DNjOczfopPA0yLDD4PAH
 x4sCGD/dAWGKGzeW7HUpBNfn09mJ6thy6tvKRNFjER1/DkNoMO7w72l8gKRJWr7kT5TP
 TILA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hp4ZqKJFgK4uLa1fCKeYX3qAN/EqBPSq1GfaFFrBuVs=;
 b=O/aGsB1RIljXtJgimJvL69XGFYiVFAcTwx5cyFV4fd+U1oO3eIVhN1vVbd74Rgyv0Q
 sz39HweWyJzNkD8J8aoUbwgOsrXwPhe2D+x+m0WPbiIEIkBw8nJ6ce+KSHBlFdlFTrcy
 KYOmUgbOYjxYMfNF6qgfCBzbUtDcX0MCVAMjBknY00vBZaPGokRwjuOuKnO8sGLtXMa3
 WIE0vW67GN3kekCkKVqt9oNFJcIfAY0zVdzOf6sk93wRjYPXnniqgyvUX/LdEAiQj84p
 3bN50fqrm+U/QHOp0o+4JRozHJh77gGffwZz7CGs5m1ilGYZF+5Vkp3OqGeJuJcgcOSc
 f7/w==
X-Gm-Message-State: APjAAAXvQ0R2Twgj3N49+UaWDEztaHvvYX2/7+OjKQo92zDnxVVNuwgg
 VGiHucy5xY1I+7sTLsb/EZxkGlb57nwBqg==
X-Google-Smtp-Source: APXvYqwzC7+t27yCaR2D4Tf0lqG6on+mL5s+i1CGe+7ZXTqG2EnXWBMPVMoCatJPEGtroKIyQjEefA==
X-Received: by 2002:a9d:6544:: with SMTP id q4mr9657902otl.269.1581527870838; 
 Wed, 12 Feb 2020 09:17:50 -0800 (PST)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com.
 [209.85.210.41])
 by smtp.gmail.com with ESMTPSA id m68sm274559oig.50.2020.02.12.09.17.50
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Feb 2020 09:17:50 -0800 (PST)
Received: by mail-ot1-f41.google.com with SMTP id 66so2661249otd.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Feb 2020 09:17:50 -0800 (PST)
X-Received: by 2002:a05:6830:1304:: with SMTP id
 p4mr10256251otq.327.1581527870243; 
 Wed, 12 Feb 2020 09:17:50 -0800 (PST)
MIME-Version: 1.0
References: <CACna6rwe55gmb19H+EToF_jDOEDVqDOJkzhqGW-6G61=Gn2ReQ@mail.gmail.com>
 <4d01d640-39da-6aa0-5027-2d96f7180bba@kresin.me>
 <CACna6rxfX9ObUx-XCPdgq9H+vqSVn4bZxe8J4qnRAdMtOxJ2Eg@mail.gmail.com>
In-Reply-To: <CACna6rxfX9ObUx-XCPdgq9H+vqSVn4bZxe8J4qnRAdMtOxJ2Eg@mail.gmail.com>
From: Mathias Kresin <dev@kresin.me>
Date: Wed, 12 Feb 2020 18:17:39 +0100
X-Gmail-Original-Message-ID: <CABwW5nk-2OBpRTmR8qjk-UF=oLpKiWsKCGFim9oe4jJRiVPhyQ@mail.gmail.com>
Message-ID: <CABwW5nk-2OBpRTmR8qjk-UF=oLpKiWsKCGFim9oe4jJRiVPhyQ@mail.gmail.com>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_091752_546996_9DC8B7B0 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32c listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Network broken with kernels 5.2+
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
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW0gTWkuLCAxMi4gRmViLiAyMDIwIHVtIDE3OjM4IFVociBzY2hyaWViIFJhZmHFgiBNacWCZWNr
aSA8emFqZWM1QGdtYWlsLmNvbT46Cj4KPiBPbiBUdWUsIDI5IE9jdCAyMDE5IGF0IDA3OjAwLCBN
YXRoaWFzIEtyZXNpbiA8ZGV2QGtyZXNpbi5tZT4gd3JvdGU6Cj4gPiAyOC8xMC8yMDE5IDIzOjAx
LCBSYWZhxYIgTWnFgmVja2k6Cj4gPiA+IFVzaW5nIE9wZW5XcnQgd2l0aCBrZXJuZWxzIDUuMisg
cmVzdWx0cyBpbiBicm9rZW4gbmV0d29yay4gSW50ZXJmYWNlcwo+ID4gPiBzZWVtIE9LIGJ1dCBJ
IGNhbm5vdCBwaW5nIG15IHJvdXRlciBhbnltb3JlLgo+ID4gPgo+ID4gPiBUaGlzIHJlZ3Jlc3Np
b24gaXMgY2F1c2VkIGJ5IHRoZSB1cHN0cmVhbSBjb21taXQKPiA+ID4KPiA+ID4gY29tbWl0IGI0
MjRlNDMyZTc3MGQ2ZGQ1NzI3NjU0NTlkNWI2YTk2YTE5YzUyODYgKHJlZnMvYmlzZWN0L2JhZCkK
PiA+ID4gQXV0aG9yOiBNaWNoYWwgS3ViZWNlayA8bWt1YmVjZWtAc3VzZS5jej4KPiA+ID4gRGF0
ZTogICBUaHUgTWF5IDIgMTY6MTU6MTAgMjAxOSArMDIwMAo+ID4gPgo+ID4gPiAgICAgIG5ldGxp
bms6IGFkZCB2YWxpZGF0aW9uIG9mIE5MQV9GX05FU1RFRCBmbGFnCj4gPiA+Cj4gPiA+IFJldmVy
dGluZyB0aGF0IGNvbW1pdCBmcm9tIHRoZSB0b3Agb2YgNS4yIG9yIDUuMyBmaXhlcyBuZXR3b3Jr
IGZvciBtZS4KPiA+ID4KPiA+ID4gQW55IGlkZWFzIHdoYXQncyB3cm9uZyB3aXRoIE9wZW5XcnQg
JiBhYm92ZSBjaGFuZ2U/Cj4gPiA+Cj4gPgo+ID4gSGV5IFJhZmHFgiwKPiA+Cj4gPiBhc3N1bWlu
ZyB5b3UgYXJlIG9uIGEgdGFyZ2V0IHVzaW5nIHN3Y29uZmlnLCB0aGlzIHBhdGNoIHNob3VsZCBm
aXggdGhlCj4gPiBicm9rZW4gbmV0d29yazoKPiA+Cj4gPiBodHRwczovL2dpdC5vcGVud3J0Lm9y
Zy8/cD1vcGVud3J0L3N0YWdpbmcvbWtyZXNpbi5naXQ7YT1jb21taXQ7aD0zYTc3MmVlMjMxZTRi
NGMyYzUzN2Q4ZDU0MWYwMDFiNTI0MmI5YzM1Cj4KPiBEbyB5b3UgbWluZCBpZiBJIHB1c2ggeW91
ciBwYXRjaD8gSSBzdWNjZXNzZnVsbHkgdGVzdGVkIGl0IHdpdGggNS40LgoKRmVlbCBmcmVlIHRv
IHB1c2ggdGhlIHBhdGNoLgoKTWF0aGlhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=
