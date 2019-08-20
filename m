Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68679965C1
	for <lists+openwrt-devel@lfdr.de>; Tue, 20 Aug 2019 17:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YrFcKJnT/TrhVwwuID8JBps6njDnEZc4UAIQMtclcg=; b=ZltUImdXeaTbCr
	zudYK4qFbtkD8k0R9V+Y/KeCZ0RML/9O0XHEUQaA+vhs2eOVodj3H4nun686UMHZdmSYtpshoN8Mz
	xXRWvGuEI6732+O0uddHIRQl2d1A6ygEHcxkhHi3VrjEKTT8qoCos+6tZgOGr0mD/wvNQU3TtCtLM
	XvumUOV3BRiZgXpiw4zDqA573yR4kvl86RSE6aaQaLcRgtN+zMiw5ujcIcE5kXcNH/32tBKcGtiHb
	ujxpH1G2KtQXpRUCV8H/6c2r8LQ35auRX9DgRG3wlqSITDz6zbPFRUr+3Jvr0tuieelumImTC4u7f
	Vj9c/6fs2/+jTPgleIGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06XT-0000b5-BI; Tue, 20 Aug 2019 15:59:15 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06XK-0000aZ-9Y
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 15:59:07 +0000
Received: by mail-io1-xd2d.google.com with SMTP id i22so13250890ioh.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 20 Aug 2019 08:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=780kQJX5ytDLRZo2j4fc/+kAAqOKhcPaQJRuR6/eqak=;
 b=rmn86d/tx3t4hY1mVCZDzMZ/BJoTQ0+LOoZZH+OPEGSMXXslIZjsKOno8Rx9Jlo7hc
 HPMojcUuKPMuagS/ozKBejTGTQOVr1kwaWweyikuxDhisPvYlKhIQ1g5unFeqaH6wuJy
 aZuxbGSIvFxoiuAyWaZj8JjE+V2TxDI7AM1ObU5kuSYSTE4qKCWFqIAUJbE0fq4TR0Qn
 P/gn+vkMnh5oQfeKt7wR0QlB9vameF4QyewhJujasZ/RNZSeZM4j2I+XYCJxwmwBHToI
 YwdO5Pw2hdQSwTO7il/bhjl+NflPmEw7sihr1tggQKeZzAeYqD2uUGBVgmZZ01UgbulE
 FnwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=780kQJX5ytDLRZo2j4fc/+kAAqOKhcPaQJRuR6/eqak=;
 b=cdtDQbLLwdQshshkSBkBfkPB7DVgvz3WlYALwZn3xIXy7mCG91RTFg402OkiQvuydA
 im4ONt7tdUzA6u1LzX+6ZfH+lKhFys6wT47E6DflnnqpUy8pwR9XYN+95SdH4H4x1ymW
 zRF3UhS6PjwdpI9Ap1yLfnI7wc1Hb/4YEroRZnBjEYCYjOQihmv/ntInGa3mh+AtNCAy
 Nx4PhtzGNCIOGKqFOQc/cNtG5wZwluboEhesTVVAOzvHMEjCXT12OLDp9ljmPJsP8w4Y
 6z/e83aprcmWuZeAIhsIoflOrNQm+GH6/PhJDcwa67BOp6ETNzu7xL98eNP6hlH+wqjW
 YbrQ==
X-Gm-Message-State: APjAAAUHvMmUCjnq+66BJLP0nAQIi86F/uQKJXJSAnfvTZdIRNqPhBoz
 vYp8KlDw2Ka3rFGeiSSWl5h/3lRDblyABkx5QMU=
X-Google-Smtp-Source: APXvYqwHNKqanv5ro/MDjeBvgrRqF/UbrqB9g8N3ic1tLDg4Y1FVpA8IuODOCvTv0mep9u6UvMKw4PkRHEze3ZOSXyQ=
X-Received: by 2002:a02:4005:: with SMTP id n5mr4516157jaa.73.1566316744547;
 Tue, 20 Aug 2019 08:59:04 -0700 (PDT)
MIME-Version: 1.0
References: <859F4E11-840B-4BDE-AA3E-0BA3FD461620@gmail.com>
 <5db7f548-9eca-d798-5a18-229259507025@ironai.com>
 <2D0AD814-FD6E-45BE-9B6E-7389ABB7DB4A@gmail.com>
In-Reply-To: <2D0AD814-FD6E-45BE-9B6E-7389ABB7DB4A@gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Tue, 20 Aug 2019 18:58:53 +0300
Message-ID: <CANoib0FaZNd4eBQY65P0nuUzOmpv7RKkGLmU+SXO4NEmSn0SBw@mail.gmail.com>
To: Rich Brown <richb.hanover@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_085906_332862_666AF18A 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Did they check security of OpenWrt?
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
Cc: Vincent Wiemann <vincent.wiemann@ironai.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UmljaCwKCk9wZW5XcnQgaXMgYSBMaW51eCBkaXN0cm8uIEl0IGhhcyBhbGwgc2VjdXJpdHkgYXMg
YW55IG90aGVyIG9uZS4gQWxsCkNWRSBhcmUgdGltZWx5IGFkZHJlc3NlZC4KVGhlcmUgaXMgbm8g
bmVlZCBmb3Igc3BlY2lhbCB0ZXN0cy4KCtCy0YIsIDIwINCw0LLQsy4gMjAxOSDQsy4g0LIgMTg6
MzQsIFJpY2ggQnJvd24gPHJpY2hiLmhhbm92ZXJAZ21haWwuY29tPjoKPgo+IEhpIFZpbmNlbnQs
Cj4KPiBJIGRvbid0IGtub3cgd2hldGhlciB0aGUgYXJ0aWNsZSwgb3IgaXRzIHVuZGVybHlpbmcg
cmVwb3J0IGZyb20gQ3liZXIgSW5kZXBlbmRlbnQgVGVzdGluZyBMYWIgLSBDSVRMLCBpcyBhIGpv
a2Ugb3Igbm90LiAoQWx0aG91Z2gsIEknbGwgYWdyZWUgdGhhdCBhbnkgZmlybXdhcmUgdXNpbmcg
MTgteWVhciBvbGQga2VybmVscyBpcyBvbiBpdHMgZmFjZSBhIHNlY3VyaXR5IGpva2UuKQo+Cj4g
TXkgcXVlc3Rpb25zIHdlcmUgbW9yZSBhYm91dCBPcGVuV3J0LiBIb3cgd291bGQgb3VyIGN1cnJl
bnQgYnVpbGRzIHN0YWNrIHVwIHVuZGVyIHRoZSBjcml0ZXJpYSB1c2VkIGluIHRoZSByZXBvcnQn
cyB0YWJsZT8gSXQgbGlzdGVkOgo+Cj4gLSBTdGFjayBHdWFyZHMKPiAtIEFTTFIKPiAtIFJFTFJP
Cj4gLSBGb3J0aWZ5IFNSQwo+IC0gTm9uLUV4ZWMgU3RhY2sKPgo+IEFuZCBhcmUgdGhlcmUgb3Ro
ZXIgc2VjdXJpdHkgcHJhY3RpY2VzIHRoYXQgd2UgZW5mb3JjZSB0aGF0IHdvdWxkIG1ha2UgYW4g
T3BlbldydCBzeXN0ZW0gbW9yZSBzZWN1cmU/Cj4KPiBJZiBPcGVuV3J0IGNvbXBhcmVzIGZhdm9y
YWJseSwgaXQgb2NjdXJzIHRvIG1lIHRoYXQgd2UgY291bGQgaW52aXRlIENJVEwgdG8gcmV2aWV3
IE9wZW5XcnQgYnVpbGRzIChvbiBodW5kcmVkcyBvZiByb3V0ZXJzKSBhbmQgdXBkYXRlIHRoZWly
IHJlcG9ydC4uLgo+Cj4gVGhhbmtzLgo+Cj4gUmljaAo+Cj4gPiBPbiBBdWcgMjAsIDIwMTksIGF0
IDk6NDMgQU0sIFZpbmNlbnQgV2llbWFubiA8dmluY2VudC53aWVtYW5uQGlyb25haS5jb20+IHdy
b3RlOgo+ID4KPiA+IEhpIFJpY2gsCj4gPgo+ID4gdGhlIGFydGljbGUgaXMgYSBqb2tlLiBJJ20g
bm90IHRhbGtpbmcgYWJvdXQgdGhlIHJlc2VhcmNoZXJzLCBidXQgYWJvdXQgY2l0aW5nIGEgc3Rh
dGVtZW50IGxpa2U6Cj4gPiDigJ5Ib3dldmVyLCB0aG9zZSBzYW1lIGZpcm13YXJlIGJpbmFyaWVz
IGRpZCBub3QgZW1wbG95IG90aGVyIGNvbW1vbiBzZWN1cml0eQo+ID4gZmVhdHVyZXMgbGlrZSBB
U0xSIG9yIHN0YWNrIGd1YXJkcywgb3IgZGlkIHNvIG9ubHkgcmFyZWx5LOKAnAo+ID4KPiA+IExv
b2sgYXQgdGhlIHNvdXJjZS1jb2RlIG9mIHRoZSBtZW50aW9uZWQgdmVuZG9ycy4gVGhleSBwYXJ0
aWFsbHkgdXNlIDE4IHllYXJzIG9sZCBrZXJuZWwgY29kZSBhbmQKPiA+IFRlbG5ldC1saWtlIG1h
bmFnZW1lbnQgaW50ZXJmYWNlcy4KPiA+Cj4gPiBSZWdhcmRzLAo+ID4KPiA+IFZpbmNlbnQKPiA+
Cj4gPgo+ID4gT24gMjAuMDguMTkgMTM6MjEsIFJpY2ggQnJvd24gd3JvdGU6Cj4gPj4gSGkgZm9s
a3MsCj4gPj4KPiA+PiBZb3UndmUgcHJvYmFibHkgc2VlbiB0aGUgU2xhc2hkb3QgYXJ0aWNsZSBh
Ym91dCAobGFjayBvZikgc2VjdXJpdHkgZ2FpbnMgaW4gcm91dGVyIGZpcm13YXJlLiBodHRwczov
L3lyby5zbGFzaGRvdC5vcmcvc3RvcnkvMTkvMDgvMTYvMjA1MDIxOS9odWdlLXN1cnZleS1vZi1m
aXJtd2FyZS1maW5kcy1uby1zZWN1cml0eS1nYWlucy1pbi0xNS15ZWFycyBUaGUgb3JpZ2luYWwg
YXJ0aWNsZSBvbiBTZWN1cml0eSBMZWRnZXIgaXMgYXQ6IGh0dHBzOi8vc2VjdXJpdHlsZWRnZXIu
Y29tLzIwMTkvMDgvaHVnZS1zdXJ2ZXktb2YtZmlybXdhcmUtZmluZHMtbm8tc2VjdXJpdHktZ2Fp
bnMtaW4tMTUteWVhcnMvCj4gPj4KPiA+PiBUd28gcXVlc3Rpb25zOgo+ID4+Cj4gPj4gMSkgRG9l
cyBhbnlvbmUga25vdyBpZiB0aGUgcmVzZWFyY2hlcnMgbG9va2VkIGF0IE9wZW5XcnQ/Cj4gPj4K
PiA+PiAyKSBJZiBub3QsIGhvdyB3b3VsZCBPcGVuV3J0IHN0YWJsZSBvciBzbmFwc2hvdCBoYXZl
IGZhcmVkIGluIHRoZSBhbmFseXNpcz8gRG8gd2UgZW5hYmxlIHN0YWNrIGd1YXJkcywgQVNMUiwg
ZXRjLiBvbiBhbGwgYnVpbGRzPwo+ID4+Cj4gPj4gVGhhbmtzLgo+ID4+Cj4gPj4gUmljaAo+ID4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4gb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiA+PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCj4gPj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwKPiA+Pgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
