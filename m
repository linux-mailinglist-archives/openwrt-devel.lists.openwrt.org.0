Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3D61744D7
	for <lists+openwrt-devel@lfdr.de>; Sat, 29 Feb 2020 05:13:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KN/FQMP76Yt6sFOQXe/N/lvm0w2IPlUi2vZEwnW0krQ=; b=YcAEVb/N4/Bwv4
	mGjWtmoI1zr0KgVjcAduvXEPUbf71nNyS6sO7Rh2nv0/2AonQwIfJ6W6psFI1f6Lk8UXLNtB2q5gb
	v1KuLrOpiVMaI584gF5zGudIoKim7U8KZkKAtNOKdA5I7IsHHZJDUVRDU/nQQOyjaSBYQi4rsj1/v
	pBXtsxeoo3eNdHKbSuErB5fURxSAaLGUXSRsTOY6nEaflvz1m5HCimxmRhJdN+nukNGpaxLMbZNES
	LTC9TI1NHNm/NYMAud6jRcq1b6j/OWdSiY/Kkth1DuvlRVRzROIULzBWEWU1QrsnqEv7/ywUlWJuw
	2Um+91elL7bF9vrdRgjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7tUx-0004Rl-3u; Sat, 29 Feb 2020 04:13:07 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7tUp-0004RK-4E
 for openwrt-devel@lists.openwrt.org; Sat, 29 Feb 2020 04:13:00 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 2so5003654oiz.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 28 Feb 2020 20:12:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8REUvfJQUCKeVwm6SFTAjiJTEJGwPTFF91hFVapY0hY=;
 b=MbI6jcR+XLIHwlvt2MjY9po5XB6MfPEOpGzt9slftXf4CnLFNHMexmfZJHnKHJ/9j2
 v3B1TP/UcG/CYcDBGD7QNNbiTYRfISm5HukLJTM1Tvg6LtWPUPfvPI7q3Xalz8fOralE
 CMVA8/hqKhdvsy29UZw0qso8frTGv+CKZdcu46x/CPrCxQboipvkYfFVN0TvllSCZ/7k
 PGmfLzFc0HO7dF0LHqH0JxjYhe6w4gy8N1fHoBAf4OIo8gtulE0YlBhRIlRm9nRVszsY
 owiDEIj/bU/ZwAZY2veisuEiAZJ5kvnjjPXuqud4yIx7y/6IYpNr8+QDML26e9Uusoae
 rSig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8REUvfJQUCKeVwm6SFTAjiJTEJGwPTFF91hFVapY0hY=;
 b=s4+9/q7cYzZw49Aaqvxg2FZ6FOJVXBXOUcakcs07sgEBgQhYLO5TXOqzompIvYKPcJ
 Zzq4T3AG2p0FFfYTriySc7hbx39UmX9ExDXWE7THa9ekdyGtpKYViYaDI6VKDaJKVv8I
 7pvgm4LMlrxc5SEhXoocmvwRGUm2s1owpQAZyOtzfUo4zHAluj8AUU4SuraNTgEsENoA
 xr1vmgdSUD12N6gtxDDhEpX3ct1+rser7Dkb+c/1hobCI/fFujIs+yshXWqVdWMyKsG5
 3Vib2CMyMOU2ndijp87/Y10XY2c70Y7pttJAfVW4Ay6KxkNqgw40DFuPfIp2XYvM5MZh
 y1Eg==
X-Gm-Message-State: APjAAAUryqJF1gUcWU/2RYRfTN/nqeqawE2zYS3DQ18qYzxMplDwC4/o
 tSQ/2Mhz2R8ulDgMAzCymnvW/uYH5gp9IEvPLb0=
X-Google-Smtp-Source: APXvYqzixCT5L7oEwfN+QGruu9SRUMEY8sG4A8Eu9QOCGxE+61Rklb83zTrNqJ7H1XFo0JzzLP3uKU3dFVYMH0u72D8=
X-Received: by 2002:aca:cd0e:: with SMTP id d14mr5058947oig.167.1582949576566; 
 Fri, 28 Feb 2020 20:12:56 -0800 (PST)
MIME-Version: 1.0
References: <20191128191933.5421-1-rosenp@gmail.com>
 <20191225111701.GI70645@meh.true.cz>
 <CAKxU2N9rckeK7LL2QvoEzghFLENtzNy3i-zFBW7a6RcH3OMcrw@mail.gmail.com>
 <20200228100254.GB2524@meh.true.cz>
In-Reply-To: <20200228100254.GB2524@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 28 Feb 2020 20:12:45 -0800
Message-ID: <CAKxU2N_jazEJgSmmMGOSEaACi6COFT62xZHs9POpT=D6NJ8fGQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_201259_168020_0BFFEABE 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCHv2 1/3] tools/pkg-config: Replace with
 pkgconf
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

T24gRnJpLCBGZWIgMjgsIDIwMjAgYXQgMjowMyBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiBbMjAxOS0xMi0y
NSAxMjo1MTozM106Cj4KPiA+IE9uIFdlZCwgRGVjIDI1LCAyMDE5IGF0IDM6MTcgQU0gUGV0ciDF
oHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gPiA+Cj4gPiA+IFJvc2VuIFBlbmV2IDxy
b3NlbnBAZ21haWwuY29tPiBbMjAxOS0xMS0yOCAxMToxOTozMV06Cj4gPiA+Cj4gPiA+ID4gcGtn
Y29uZiBpcyBhIG5ld2VyLCBhY3RpdmVseSBtYWludGFpbmVkIGltcGxlbWVudGF0aW9uIG9mIHBr
Zy1jb25maWcKPiA+ID4KPiA+ID4gSSdtIHdvbmRlcmluZyBpZiB0aGF0IGBhY3RpdmVseSBtYWlu
dGFpbmVkYCBwYXJ0IHN0aWxsIGhvbGRzIHRydWUuCj4gPgo+ID4gSXQgZG9lcy4gVGhlIHRlYW0g
aGFzIG1hbmFnZW1lbnQgaXNzdWVzIGl0IHNlZW1zLiBUaGV5J3ZlIHB1YmxpY2x5Cj4gPiBzdGF0
ZWQgdGhleSB3YW50IHRvIG1vdmUgYXdheSBmcm9tIEdpdEh1YjoKPiA+IGh0dHBzOi8vZ2l0aHVi
LmNvbS9wa2djb25mL3BrZ2NvbmYuZ2l0aHViLmlvL2lzc3Vlcy8xCj4gPgo+ID4gU28geW91IHdv
dWxkIHRoaW5rIGJhc2VkIG9uIHRoZSBVUkwgb2YgdGhlIGRvd25sb2FkIHRoYXQgZGV2ZWxvcG1l
bnQKPiA+IG1vdmVkIGhlcmU6IGh0dHBzOi8vZ2l0LmRlcmVmZXJlbmNlZC5vcmcvcGtnY29uZi9w
a2djb25mIwo+ID4KPiA+IEJ1dCB0aGVyZSdzIGFsc28gYSB0aGlyZCBwbGFjZSB3aGVyZSBkZXZl
bG9wbWVudCBzZWVtcyB0byBoYXZlIG1vdmVkOgo+ID4gaHR0cHM6Ly9naXQuc3IuaHQvfmthbmlp
bmkvcGtnY29uZi9sb2cKPiA+Cj4gPiBTZWVtcyBpdCdzIGEgbWVzcy4KPgo+IFNvIGhvdyB0byBz
b3J0IHRoaXMgb3V0Pwo+Cj4gSSdtIHNpbXBseSBpbiBmYXZvciBvZiBrZWVwaW5nIHRoZSBjdXJy
ZW50IHBrZy1jb25maWcsIGJlY2F1c2UgdGhlIHN1Z2dlc3RlZAo+IHJlcGxhY2VtZW50IGRvZXNu
J3Qgc2VlbSBsaWtlIGEgd29ydGggY29uc2lkZXJpbmcgeWV0LCBidXQgbWF5YmUgSSByZWFkIGl0
Cj4gd3JvbmcuCkl0J3MgbW9yZSBwb3J0YWJsZSBhbmQgc21hbGxlci4gQW5kIGFzIHN0YXRlZCwg
aXQgaXMgc3RpbGwgZmFpcmx5IGFjdGl2ZS4KPgo+IC0tIHluZXp6CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
