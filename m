Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6FA1FA2AF
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jun 2020 23:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78rJ8ZV86fChE+zmCUhoIjUVCk09Pn++OfMtMcFPrcE=; b=fuoT8oJitshQ7c
	dgkipZG10lWO52VPcA5qRceBpHMbMN8He9KCWbvTcQsLitB8G7zIr0KAK3yCIOyKQILnu4q55Mk2I
	eKMfiZ3aGEfNJ6ZXj0MuqMCUgi08bpCGRU4n3OxkfcQequeuuOrFSZ6wIfTNztdhpTjasX1E8Gx7G
	inSo0nZB9caHVQezaJ4kCL8CujJORQsiJCIxlmmxaRNG3ngDVHw9JWGNqaLv29XIlRTY7NidIzoRa
	9WZTQmtFyQKboqYml8PGjXLrN7Su70eK7t4Et0O3fyIhD4c43La9gsWJL9ab428f9IK4cMJbeuQnY
	6knvY2vIIOfdxZp5YM8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkwY2-0001TD-NP; Mon, 15 Jun 2020 21:21:42 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkwXv-0001Sg-3k
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 21:21:36 +0000
Received: by mail-yb1-xb42.google.com with SMTP id h39so9733631ybj.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jun 2020 14:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VBl5H8BrMz80h0rChzfKkorwlmCoOkbVEejWWdJZIE8=;
 b=VM2WVllgu4veA1DwMWsvuuh4nSboXVtqahna7D/0xbWENNqQ7XHIwyL6EcyN7VEBR2
 7hiJeOknBrJPo/EK5mDqKoane7SIQh0oWZ/o0hbR0m9zFdLvyAqAClLlUPWJkR77sEhv
 Xmt6EhLiG6fxAgsgDbZBpif8JZ/PuQvBRu2Hx3EEkCYDfJrqXas75cS7fPKsy5ya2jw9
 0txp04dR6RyAh/8WxhLNNswf51QiEDSqVIdQbpAbIKdL3oIgP1R6PJIm5fzgyOaIcZ61
 Muqs9LQ+/EPzz1Q8Fbuadl0QOWA5nlpxkvyqBASEfL55QSfs3wKjBKfJKrJt0b1L5msa
 IKFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VBl5H8BrMz80h0rChzfKkorwlmCoOkbVEejWWdJZIE8=;
 b=F3DlljKR5i/kJg4XDToEIJrqMke23mMgl0KikNKbyJ5bjlfDqhNSOoh0l88r3sDRWE
 pMxDQuilaB4a4Jj9cagW/fotB9Ii8UYXGMlcFniGSBErCIMnwLehj5HF6W+0TKvF+4aa
 m05Q6kqvpLNK5pHn9nJQyOpIYFdXSZvcaKCemAO1WvEqutdQUxjXDeysfpEyIet73/3o
 O7bnqd9tdHsWskSO0YqeukqNH15+oE8A/SE1pexgqxxz+wUEfBvsVxPDIktj9q/ypm3v
 RnJVSGKuJUCdUOQdYqR2wEnA3J3E1LEzqtvNKSKN9ETXUm9DPfTPwFCysny/I0+pqcQn
 A06A==
X-Gm-Message-State: AOAM533mfzmpFEAVnv+S23o07TZ+qeI/kdm4LLVgL2jf12dPc4SZ+gFY
 ZElj2LQ2jvQ6sCN+LvB0g/UVkxMhKMr/7+KnrfM=
X-Google-Smtp-Source: ABdhPJyy5h/IXxL9VFMc6cKFzQHsgkwRskeQLlt1P6Z++1kYSyEiOk9dIYn4eww+LcrSHlRplJoq3/FVFxJa02ONGQ0=
X-Received: by 2002:a25:2488:: with SMTP id
 k130mr46167877ybk.241.1592256093743; 
 Mon, 15 Jun 2020 14:21:33 -0700 (PDT)
MIME-Version: 1.0
References: <2235597.0Tboij76b4@tool>
 <CAFBinCC+MOxkpuqeU1uet70M+ncmhwFAYG-pV9wCE9urDNY8RQ@mail.gmail.com>
 <013d01d64358$215c52d0$6414f870$@adrianschmutzler.de>
In-Reply-To: <013d01d64358$215c52d0$6414f870$@adrianschmutzler.de>
From: =?UTF-8?Q?Daniel_Gonz=C3=A1lez_Cabanelas?= <dgcbueu@gmail.com>
Date: Mon, 15 Jun 2020 23:21:22 +0200
Message-ID: <CABwr4_uVUvLSoc5es1+37uE=TN4U9_=6R0es4-4zGJs1KbpinQ@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_142135_170067_AB837330 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] bcm63xx: a226m-fwb: fix linux partition
 offset
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 openwrt-devel@lists.openwrt.org,
 =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RWwgbHVuLiwgMTUganVuLiAyMDIwIGEgbGFzIDIzOjA2LCA8bWFpbEBhZHJpYW5zY2htdXR6bGVy
LmRlPiBlc2NyaWJpw7M6Cj4KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9t
OiBNYXJ0aW4gQmx1bWVuc3RpbmdsIFttYWlsdG86bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVt
YWlsLmNvbV0KPiA+IFNlbnQ6IE1vbnRhZywgMTUuIEp1bmkgMjAyMCAyMjo0Nwo+ID4gVG86IERh
bmllbCBHb256w6FsZXogQ2FiYW5lbGFzIDxkZ2NidWV1QGdtYWlsLmNvbT4KPiA+IENjOiBvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnOyBub2x0YXJpQGdtYWlsLmNvbQo+ID4gU3ViamVj
dDogUmU6IFtPcGVuV3J0LURldmVsXSBbUEFUQ0hdIGJjbTYzeHg6IGEyMjZtLWZ3YjogZml4IGxp
bnV4Cj4gPiBwYXJ0aXRpb24gb2Zmc2V0Cj4gPgo+ID4gSGkgRGFuaWVsLAo+ID4KPiA+IE9uIE1v
biwgSnVuIDE1LCAyMDIwIGF0IDc6NTIgUE0gRGFuaWVsIEdvbnrDoWxleiBDYWJhbmVsYXMKPiA+
IDxkZ2NidWV1QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiBbLi4uXQo+ID4gPiBkaWZmIC0tZ2l0IGEv
dGFyZ2V0L2xpbnV4L2JjbTYzeHgvZHRzL2JjbTYzNTgtcGlyZWxsaS1hMjI2bS1md2IuZHRzCj4g
PiA+IGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvZHRzL2JjbTYzNTgtcGlyZWxsaS1hMjI2bS1md2Iu
ZHRzCj4gPiA+IGluZGV4IGQwYjFlNTUyMTMuLmI0NzdmYjQwZGUgMTAwNjQ0Cj4gPiA+IC0tLSBh
L3RhcmdldC9saW51eC9iY202M3h4L2R0cy9iY202MzU4LXBpcmVsbGktYTIyNm0tZndiLmR0cwo+
ID4gPiArKysgYi90YXJnZXQvbGludXgvYmNtNjN4eC9kdHMvYmNtNjM1OC1waXJlbGxpLWEyMjZt
LWZ3Yi5kdHMKPiA+ID4gQEAgLTEwOSw3ICsxMDksNyBAQAo+ID4gPgo+ID4gPiAgICAgICAgICAg
ICAgICAgbGludXhAMTAwMDAgewo+ID4gcGxlYXNlIHVwZGF0ZSB0aGUgdW5pdC1hZGRyZXNzIChh
Ym92ZSkgYXMgd2VsbCwgb3RoZXJ3aXNlIHRvb2xzIChsaWtlCj4gPiBkdGMpIG1heSBzdGFydCB0
byBjb21wbGFpbgo+Cj4gSSBkaWQgdGhpcyBhbHJlYWR5IHdoZW4gSSBtZXJnZWQgdGhlIHBhdGNo
IHRvZGF5LiA6LSkKPgpUaGFuayB5b3UuClJlZ2FyZHMKCj4gPgo+ID4KPiA+IE1hcnRpbgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
