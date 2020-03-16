Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7C71866F1
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 09:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9i4TcL1CbQhP8dGMm/bAkevmTIAZw9CAjOARASdBBY=; b=A252SQfkLYPzki
	nufGd9sq1F02vrxJZTCY8yUYPjB0P3USCl79oMNMXOF202BjdFru9lXPIfj4PikBN0P8fHNB3/xSm
	loOiIhyzEJtHEd0gskFj4VnCisHxKu3d5+u7uq87j3wpCDlJ/R75Ugm+RBWiPvWvWqvnXsjy1MzyK
	6WfnTPJ+h3l9ySvjxs5CicYeFG51AUx9pwE5YC3Owu12YIUvk7IlgWnIp8kARtbpURPY7hlBPjsBF
	74gPXskatMdTnZZ0Lb+MePpAQypPiVg8X6f7+mNWfJLyJq4BXTrGfrzy7//AQXtm8I9wyB8dvW/Q8
	h3rTEUnh1WEu/KH3SigA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlUC-00008B-7i; Mon, 16 Mar 2020 08:52:36 +0000
Received: from mail-vs1-xe29.google.com ([2607:f8b0:4864:20::e29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDlTw-0008UQ-4x
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 08:52:21 +0000
Received: by mail-vs1-xe29.google.com with SMTP id m25so1865798vsa.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Mar 2020 01:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SlgcQQ412RgoXEz65vFFNvm5P2Pl4Q8Wy1eQ90GgYSU=;
 b=WtIiZKYNvVcyPxPJpXhJwKecZdX8oL58LPpBKIH+rSpFxu7RV8kMw7EKnGMeNquuuc
 Du52ZHACj+YFFAiwNDoG27vIjrpdIWnyLlTnT6Cxp2WKZknbiU4U6QT/1NVOuok6w8J6
 poQKvbEUGl7wlNLd2H82Y4iVduiaOlNTLvXRJvCuYYAoKhqqCO6Bzp80BS2Jy6lMCNT3
 N3nL8iVZnBbd5kNx0M63E3EencYYVQqNrHiBfIlwX8hgeYoqwquiPEWrDduyHCT7bg0r
 GyrW0iAwUogNpSpNWlMS8F7Jl0G17pvXn3z2OTv7nJph+4gwnAR0QFGdyxE2TsNlPrm0
 b21w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SlgcQQ412RgoXEz65vFFNvm5P2Pl4Q8Wy1eQ90GgYSU=;
 b=qNPpbTFUZF4WqliQC0prgsFF48wucwkfRpalDCI0uZY0BzBW4SpmMfyucGwGP2KEGr
 gKXBlVpN3viVFa32i+lw1A/ZgLRNOxt46f705qg5daIxPMLYSafLbd9SYXQ51rOWLnCp
 2dYWPPA9/qMGKJN8fltONi63EHghGEHslsbYaK4tBR7jn/OGI0YC7s/xLU+fOARrf4zi
 AfmmYG0sx7Rz8U62EHXFVftPUT6mIDrb1S348iHXY01B8y7ayfGcH8Bun71rKI/m1GfV
 JndiO0U59NX+vddGguF99U2mNUR4xesq39SGXh3X+OFsd5+w1QUoGeGs03kLlYMuyHHD
 afuQ==
X-Gm-Message-State: ANhLgQ2PPSJNFh27CJOTRSiBHiX/t6FRM+pOEgaQN4Q1TnVjEe3M7zkD
 cj4z7LhnOjnf9gUtI30i/VXSSz438u3wrNQmbwo=
X-Google-Smtp-Source: ADFU+vt4mw+kReFXm6kaOvOGXYBozeR1wTJriYfLY63wuQRd7s+t1EeGQkTjzaUhZcF+xUweJydZFkbnKeUsIqAp6/M=
X-Received: by 2002:a67:304f:: with SMTP id w76mr15626142vsw.125.1584348737706; 
 Mon, 16 Mar 2020 01:52:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200305193427.17434-1-dev@kresin.me>
 <CAF1oqRBVWHEHG37GTnUZ0vW-VsvK4pTp0rUBJq-MP3+wgCXOdw@mail.gmail.com>
 <8294a7b0-68f5-9708-72b6-8d7207cad8b9@kresin.me>
In-Reply-To: <8294a7b0-68f5-9708-72b6-8d7207cad8b9@kresin.me>
From: =?UTF-8?B?QWxpbiBOxINzdGFj?= <alin.nastac@gmail.com>
Date: Mon, 16 Mar 2020 09:52:06 +0100
Message-ID: <CAF1oqRAjM-0nbKTJnigdE+coT=ORTyiVS7A2RSPNsT4TrAdxxA@mail.gmail.com>
To: Mathias Kresin <dev@kresin.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_015220_241378_9C39972F 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e29 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alin.nastac[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] iproute2: revert add libcap support,
 enabled in ip-full
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

T24gU3VuLCBNYXIgMTUsIDIwMjAgYXQgMTE6NDAgUE0gTWF0aGlhcyBLcmVzaW4gPGRldkBrcmVz
aW4ubWU+IHdyb3RlOgo+Cj4gMDUvMDMvMjAyMCAyMzoyOSwgQWxpbiBOxINzdGFjOgo+ID4gT24g
VGh1LCBNYXIgNSwgMjAyMCBhdCA4OjM0IFBNIE1hdGhpYXMgS3Jlc2luIDxkZXZAa3Jlc2luLm1l
PiB3cm90ZToKPiA+Pgo+ID4+IFRoaXMgcmV2ZXJ0cyBjb21taXQgYTZkYTNmOWVmNzQ2MTAxYjg0
YTZmNTMwZjVhNDBkZTI4MzQxYjY5YS4KPiA+Cj4gPiBOb3QgZXhhY3RseSBhIHJldmVydCwgc2lu
Y2UgaXQga2VlcHMgSEFWRV9DQVAgbG9naWMuCj4KPiBTdXJlLCBJIHdhbnQgdG8gbWFrZSBzdXJl
IHRoYXQgSEFWRV9DQVAgaXMgcmVhbGx5IGRpc2FibGVkLgo+Cj4gPj4gVGhlIGxpYmNhcCBpc24n
dCBhcyBvcHRpb25hbCBhcyB0aGUgY29tbWl0IG1lc3NhZ2VzIHN1Z2dlc3RzLiBBIGhhcmQKPiA+
PiBkZXBlbmRlbmN5IHRvIHRoZSBsaWJjYXAgcGFja2FnZSBpcyBhZGRlZCwgd2hpY2ggaXMgb25s
eSBhdmFpbGFibGUgaW4KPiA+PiB0aGUgZXh0ZXJuYWwgcGFja2FnZXMgZmVlZC4gVGhlcmVmb3Jl
IGl0IGlzIGltcG9zc2libGUgdG8gcGFja2FnZQo+ID4+IGlwLWZ1bGwgd2l0aG91dCBoYXZpbmcg
dGhlIGV4dGVybmFsIHBhY2thZ2VzIGZlZWQgdXAgYW5kIHJ1bm5pbmcsIHdoaWNoCj4gPj4gaXMg
YSByZWdyZXNzaW9uIHRvIHRoZSBmb3JtZXIgYmVoYXZpb3VyLgo+ID4KPiA+IFRoZSBsaWJjYXAg
c3VwcG9ydCBpcyBieSBhbGwgbWVhbnMgb3B0aW9uYWwsIG90aGVyd2lzZSBpcHJvdXRlMiBidWls
ZAo+ID4gd2lsbCBmYWlsIHdoZW4gaXRzIG1pc3NpbmcuCj4KPiBZb3UgZGVzY3JpYmUgZXhhY3Rs
eSB0aGUgaXNzdWUgSSBoaXQgd2hpbGUgYnVpbGRpbmcgaXAtZnVsbC4gRHVyaW5nCj4gZGV2ZWxv
cG1lbnQgSSBkb24ndCBoYXZlIGFueSBleHRlcm5hbC90aGlyZC1wYXJ0eSBmZWVkcyBpbnN0YWxs
ZWQuIEFuZAo+IHRoZSBPcGVuV3J0IGJhc2Ugc3lzdGVtIHNob3VsZG4ndCBkZXBlbmQgb24gZXh0
ZXJuYWwvdGhpcmQtcGFydHkgZmVlZHMuCj4gVGhlc2UgZmVlZHMgYXJlIGFuIGFkZCBvbiBhbmQg
Ynkgbm8gbWVhbnMgYSByZXF1aXJlbWVudC4KPgo+ID4gQmVzaWRlcywgeW91ciBjb21taXQgYWN0
dWFsbHkgcmVtb3ZlcyB0aGlzCj4gPiBkZXBlbmRlbmN5LiBJZiB0aGlzIGlzIG5vdCBhIGxpdmlu
ZyBwcm9vZiBvZiB0aGUgZmFjdWx0YXRpdmUgbmF0dXJlIG9mCj4gPiB0aGlzIGRlcGVuZGVuY3ks
IEkgZG9uJ3Qga25vdyB3aGF0IGVsc2UgaXMuCj4KPiBTb3JyeSwgSSBkb24ndCBnZXQgd2hhdCB5
b3UncmUgdHJ5aW5nIHRvIHNheS4KCkknbSB0cnlpbmcgdG8gc2F5IHRoYXQgbGliY2FwIGRlcGVu
ZGVuY3kgaXMgb3B0aW9uYWwgZnJvbSBpcHJvdXRlMiB0YXJiYWxsIHBvdi4KCkkgZ3Vlc3MgeW91
IHdlcmUgdHJ5aW5nIHRvIHNheSB0aGF0IG9wZW53cnQgK2xpYmNhcCBkZXBlbmRlbmN5IHdhcyBu
b3QKb3B0aW9uYWwsIGJ1dCBJIGRvbid0IHJlYWxseSB1bmRlcnN0YW5kIHdoeSB5b3UgdGhpbmsg
aXQgaXNuJ3QuIGlwCnBhY2thZ2UgaGFzIDIgdmFyaWFudHMgKHRpbnkgYW5kIGZ1bGwpIGFuZCBJ
IG9ubHkgZW5hYmxlZCBpdCBvbgppcC1mdWxsIHZhcmlhbnQuU2luY2UgdGhlIHZhcmlhbnQgc2Vs
ZWN0aW9uIGlzIGF0IHVzZXIncyBkaXNjcmV0aW9uLAp0aGUgaXAgb3BlbndydCBwYWNrYWdlIGRl
cGVuZGVuY3kgb2YgbGliY2FwICppcyogLSBieSBhbGwgbWVhbnMgb2YgdGhlCndvcmQgLSBvcHRp
b25hbC4KCj4gPiBPbmUgd291bGQgYXJndWUgdGhhdCBpcC1mdWxsIHNob3VsZCBjb3JyZXNwb25k
IHRvIHRoZSBmdWxsIGZsZWRnZWQKPiA+IHZlcnNpb24gb2YgdGhlIHBhY2tldC4gSWYgdGhlIGRl
cGVuZGVuY3kgb2YgYW4gZXh0ZXJuYWwgcGFja2FnZSBpcyB0aGUKPiA+IGlzc3VlLCBob3cgYWJv
dXQgbWFraW5nIGEgZGlmZmVyZW50IHZhcmlhbnQgd2l0aCBIQVZFX0NBUCBzdXBwb3J0PyBJdAo+
ID4gY291bGQgYmUgY2FsbGVkIGlwLXJlYWxseS1mdWxsIChvciBpcC1mdWxsZXN0KS4KPgo+IFRy
eSB0byBnZXQgbGliY2FwIGludG8gdGhlIE9wZW5XcnQgYmFzZSBzeXN0ZW0gYW5kIGVuYWJsZSBI
QVZFX0NBUAo+IGFmdGVyd2FyZHM/CgpBcyBJIHNhaWQgaW4gdGhlIHByZXZpb3VzIG1lc3NhZ2Us
IG15IHVzZSBjYXNlIGRvZXNuJ3QgcmVxdWlyZSBsaWJjYXAKZnVuY3Rpb25hbGl0eSwgc28gSSBo
YXZlIG5vIHByb2JsZW0gd2l0aCBkaXNhYmxpbmcgSEFWRV9DQVAgaW4gdGhlCmZ1bGwgdmFyaWFu
dCwgYnV0IGZyb20gdGhlIHNlbWFudGljIHBvdiwgZnVsbCBzaG91bGQgcmVhbGx5IG1lYW4gImFs
bApmdW5jdGlvbmFsaXR5IGVuYWJsZWQiLiBNYXliZSBpdCB3b3VsZCBiZSB3aXNlIHRvIGNyZWF0
ZSBhIHRoaXJkCnZhcmlhbnQgY2FsbGVkIHN0YW5kYXJkIHRoYXQgd291bGQgYmUgZXF1aXZhbGVu
dCB3aXRoIHRoZSBmdWxsIHZhcmlhbnQKbWludXMgSEFWRV9DQVAuCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
