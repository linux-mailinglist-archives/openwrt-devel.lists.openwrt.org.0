Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097DB1F1D35
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 18:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7BWLpEauIu9g0KiO2F6HrXrlYhQK96/mRuKk9zWqDo0=; b=uDSNcNT//nEdSc8HdD5BHOuFOR
	RUXTfFFEh8P0HAPRXrGiEJwRtmONZut3Cs6OnpFiA5UzLdm+1Sv5eOgvnN0YoMoCxpk1nm3ntRd8W
	MpGoCLA7AUeSx0yiIGwxAoZYtTdMt3EoPg24PcB7xp+1neCuaru5B314xbojBmBiv5HV72LPxanCr
	G3uJpEYUAtTbXVzTIbPBLVwHfmIY8+lsw4GXjL+v0QyVJV7LuTHzkEFAQZjBzokUrECOFLjeY4d7u
	xXQSOVI4/qoBxT6+ltKqAI79ILUBMpsBqx05xYHyiJbsb69V/1sP/BCuWqEpRgIL6+/3LExFYO+6W
	KgsASd+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiKZW-00071Y-Di; Mon, 08 Jun 2020 16:24:26 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiKZP-00070h-Me
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 16:24:21 +0000
Received: by mail-wm1-x335.google.com with SMTP id l26so114790wme.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 08 Jun 2020 09:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=melmac.net; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=PP/JFoMZcAsPlU+L/u3qqOXfSV7vhAbP/3Gd7jJCKWc=;
 b=kLC2jCWg8koZcos6zkbedKeChvU+OziAz0E1M5QveCBSsYZWaGhagb+6QhQfGFxlrD
 PjeSM3ggbEZQURmCd0009dZdXDRxdB+/02LEpayfv5qrixp7OjcD4k5bFRVFlMONmh24
 jQ+N962rxjhbPGqdxYLSNi8BPT1BbWvAkkrPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=PP/JFoMZcAsPlU+L/u3qqOXfSV7vhAbP/3Gd7jJCKWc=;
 b=aQQfF0kwFZMOYNfAXUQGZPXAvwumlz6Zsa84115FdGApBMRiDfVG9JEaaVxeMwudde
 +yp1B9ow6R2rKl+S1a4jQh2iN/3ZODgxXBJxx9M4JySQOLlASl087rK2adOMKLiMOvb6
 31TE0WZaIdYgpOlClTVattCDiVFI0FtuAMdb9FB1nW7eFIwwj6KMvXmUFo5l97yfR9nY
 yDL6hvx/UPTUBHFoa1UoNTcyczLT6Dd9OtJIi4ztbCt1F0Be0any3obyXIBBfAYzSZbw
 QgaJHlNW5VslSkeL0wFF+oYtZu+VxNK37Bf/MoUwRK1eYQN5IBInTEU/G3kTuxyx+nj1
 Td4g==
X-Gm-Message-State: AOAM531jumlGCoyA+7PhtlnxwtZZGC24wAnE5Y5RUQ364EWvzEzOLX6k
 GSV2FcbFLUIRCaWuaGt+iM8dK7snrHF5peP/BbvLobqUkzMUagqj
X-Google-Smtp-Source: ABdhPJwOLM+rol5eDC7f8Gq40zW3y2tCGV3vBWUwd1RH7J4Ru8kEh+vq2jEj+iYsfsWtridpAclsIyjbUJZNvHNqPUE=
X-Received: by 2002:a1c:7c02:: with SMTP id x2mr109561wmc.183.1591633454395;
 Mon, 08 Jun 2020 09:24:14 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.21249.1591612295.2542.openwrt-devel@lists.openwrt.org>
In-Reply-To: <mailman.21249.1591612295.2542.openwrt-devel@lists.openwrt.org>
From: Stan Grishin <stangri@melmac.net>
Date: Mon, 8 Jun 2020 09:24:03 -0700
Message-ID: <CALu2O0Rie__3FVfT_Z99KNoYPvQqB-kc89UVcv3AASZM6=Fu2Q@mail.gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 baptiste@bitsofnetworks.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_092419_745129_A9F59DCE 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] openwrt-devel Digest, Vol 50, Issue 39
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QmFwdGlzdGUsCgpUaGFua3MgZm9yIHRha2luZyBhIGxlYWQgb24gdGhpcywgaXQncyBhIGZhbnRh
c3RpYyBpZGVhIQoKSSd2ZSBoYWQgYSBsb29rIGF0IHRoZSBwcm9qZWN0IGlkZWFzIHBvc3RlZCwg
YW5kIEknZCBsaWtlIHRvIHB1dCBteQpuYW1lIGZvcndhcmQgZm9yIGEgZmV3IGFyZWFzIHdoZXJl
IEknZCBsaWtlIHRvIGNvbnRyaWJ1dGU6CgoxLiBUaGVyZSBpcyBhIGdyZWF0IGRvY3VtZW50YXRp
b24gZm9yIGNyZWF0aW5nIGx1YS1iYXNlZCBsdWNpCmFwcGxpY2F0aW9ucyBhbmQgbW9kZWwvY2Jp
IHdoaWNoIGFsbG93ZWQgbWUgdG8gc3RhcnQgY3JlYXRpbmcgV2ViVUkKYXBwbGljYXRpb25zIHdp
dGhvdXQga25vd2luZyBtdWNoIGFib3V0IEx1YS4gSSBiZWxpZXZlIGl0IHdvdWxkIGJlCmJlbmVm
aWNpYWwgdG8gaGF2ZSBzaW1pbGFyIGRvY3VtZW50YXRpb24gZm9yIHRoZSBuZXcgamF2YXNjcmlw
dCBVSS4gSQpkb24ndCBoYXZlIG11Y2ggZXhwZXJpZW5jZSB3aXRoIGphdmFzY3JpcHQsIGJ1dCBJ
IGNhbiByZWFkIGFuZCB3aXRoCnNvbWUgc3VwZXJ2aXNpb24gSSBob3BlIEkgY2FuIGRvY3VtZW50
IHRoaW5ncy4KCjIuIFRoZSBzaG93Y2FzZSBwcm9qZWN0IC0tIGFzIHNvbWVvbmUgd2hvIHB1c2hl
ZCBmb3IgdGhlICJ3aHkgdXNlCkxFREUiIHBhZ2Ugd2hlbiB0aGUgc2l0ZSB3YXMgcmVkZXNpZ25l
ZCwgSSdtIGdsYWQgdGhlIGltcG9ydGFuY2Ugb2YKdGhpcyBpcyByZWNvZ25pemVkIGJ5IGNvcmUg
ZGV2ZWxvcGVycy4gSW4gYWRkaXRpb24gb3IgaW5zdGVhZCBvZiAjMSwgSQpjYW4gaGVscCBvdXQg
d2l0aCBzb21lIEROUyBvciBWUE4tcmVsYXRlZCBhcnRpY2xlcy4KCkkgaGF2ZSBjb250cmlidXRl
ZCB0byBzb21lIHdpa2kgcGFnZXMgKHNhZGx5IGNoYW5nZXMgc2luY2UKb3ZlcndyaXR0ZW4pLCBM
RURFIHNob3djYXNlIGFuZCBSRUFETUVzIG9uIG15IG93biBwYWNrYWdlcwooc2ltcGxlLWFkYmxv
Y2sgYW5kIHZwbi1wb2xpY3ktcm91dGluZykuCgpMZXQgbWUga25vdyBpZi9ob3cgSSBzaG91bGQg
cHJvY2VlZC4KClBTLiBJJ20gZ2xhZCB5b3UgYnJvdWdodCB1cCB0aGUgTGluZWFnZU9TIHdpa2ks
IEkgd2lzaCB3ZSBjb3VsZApzdXBwbGVtZW50IHRoZSBUb0ggd2l0aCBzb21ldGhpbmcgbGlrZSB0
aGUgc2VhcmNoIGF0Cmh0dHBzOi8vd2lraS5saW5lYWdlb3Mub3JnLywgd2hlcmUgd2hlbiB5b3Ug
c3RhcnQgdHlwaW5nIHNvbWUgbGV0dGVycwpmcm9tIHlvdXIgZGV2aWNlcyBpdCBsaXN0cyBzdXBw
b3J0ZWQgb25lcyBtYXRjaGluZyB3aGF0IHlvdSB0eXBlZC4KV2l0aCBhIHZhcmlldHkgb2YgcGxh
dGZvcm1zL2RldmljZXMgc3VwcG9ydGVkIGJ5IE9wZW5XcnQgaXQgbWF5IGJlIGEKZGF1bnRpbmcg
dGFzayBmb3IgYSBuZXcgdXNlciBqdXN0IHRyeWluZyB0byBmaWd1cmUgb3V0IGhvdyB0byBmaW5k
IHRoZQpPcGVuV3J0IGJpbmFyaWVzIGZvciBhIHNwZWNpZmljIGRldmljZS4KCgpPbiBNb24sIEp1
biA4LCAyMDIwIGF0IDM6MzIgQU0gPG9wZW53cnQtZGV2ZWwtcmVxdWVzdEBsaXN0cy5vcGVud3J0
Lm9yZz4gd3JvdGU6Cj4KPiAtLS0tLS0tLS0tIEZvcndhcmRlZCBtZXNzYWdlIC0tLS0tLS0tLS0K
PiBGcm9tOiBCYXB0aXN0ZSBKb25nbGV6IDxiYXB0aXN0ZUBiaXRzb2ZuZXR3b3Jrcy5vcmc+Cj4g
VG86IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBDYzoKPiBCY2M6Cj4gRGF0ZTog
TW9uLCA4IEp1biAyMDIwIDEyOjE0OjA1ICswMjAwCj4gU3ViamVjdDogW09wZW5XcnQtRGV2ZWxd
IEdvb2dsZSBTZWFzb24gb2YgRG9jcyBwcm9qZWN0cyBmb3IgT3BlbldydAo+IEhpLAo+Cj4gQXMg
ZGlzY3Vzc2VkIHByZXZpb3VzbHksIE9wZW5XcnQgaGFzIGFwcGxpZWQgYW5kIGJlZW4gYWNjZXB0
ZWQgZm9yIHRoZQo+IFNlYXNvbiBvZiBEb2NzLiAgV2UgaGF2ZSB0aHJlZSBtZW50b3JzIChtZSwg
Sm93LCBUaG9tYXMgSMO8aG4pLCB3aGlsZSBIYXVrZQo+IGFuZCBQYXVsIGFyZSAicHJvamVjdCBh
ZG1pbmlzdHJhdG9ycyIuCj4KPiBXZSBzdGFydGVkIHByb3Bvc2luZyBwcm9qZWN0cyBoZXJlOiBo
dHRwczovL29wZW53cnQub3JnL2dvb2dsZS1zZWFzb24tb2YtZG9jcwo+Cj4gRmVlbCBmcmVlIHRv
IGRpc2N1c3MgdGhlIHByb3Bvc2VkIHByb2plY3RzIGhlcmUsIGVzcGVjaWFsbHkgaWYgeW91IHBs
YW4gdG8KPiBhcHBseSBhcyBhIHRlY2huaWNhbCB3cml0ZXIuICBUaGUgZ29hbCBpcyB0byBjbGFy
aWZ5IHRoZSBwcm9qZWN0cyBpZgo+IG5lZWRlZCwgYW5kIG1ha2Ugc3VyZSB0aGF0IHdlIHByb3Zp
ZGUgYSBnb29kIG1hdGNoIGJldHdlZW4gcHJvamVjdHMgYW5kCj4gdGVjaG5pY2FsIHdyaXRlciBh
cHBsaWNhdGlvbnMuCj4KPiBUaGUgZGVhZGxpbmUgZm9yIGFwcGx5aW5nIGFzIGEgdGVjaG5pY2Fs
IHdyaXRlciBpcyBKdWx5IDksIHNlZQo+IGh0dHBzOi8vZGV2ZWxvcGVycy5nb29nbGUuY29tL3Nl
YXNvbi1vZi1kb2NzL2RvY3MvdGltZWxpbmUKPgo+IE1vcmUgaW5mb3JtYXRpb24gYWJvdXQgYmVp
bmcgYSB0ZWNobmljYWwgd3JpdGVyIChyZXF1aXJlbWVudHMsIHN0aXBlbmQKPiBhbW91bnQsIGV0
YykgaXMgaGVyZTogaHR0cHM6Ly9kZXZlbG9wZXJzLmdvb2dsZS5jb20vc2Vhc29uLW9mLWRvY3Mv
ZG9jcy90ZWNoLXdyaXRlci1ndWlkZQo+Cj4gQmFwdGlzdGUKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
