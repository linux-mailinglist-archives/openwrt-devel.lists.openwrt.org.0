Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CA41B90F1
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Apr 2020 16:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ps4aFTNwFVJQQSCTyEtanzzHRem1C3xdsYkfizb6gJI=; b=gqcfP70LHMl8fa
	bKxjLXptu4i7+XqYDtKb6bHlvG8P3gZ713kYcAmLf2gV9uqTXqcljH5Jo3xoNQAJzYVHEIRXnBdwf
	smfSGBbwHE8nj38ELtcRvzdcRPqsHjYtfgLNY1h1L1BFjmx80HhaBUqmNVyvyZ2Ahgn5uDKnBnlvl
	B1F/ynM+wGdv2EqhD51lL8rSS1UXAaLhU96rkRdzmq2gDQlOK8I/sdbblVa0a3OHfvLtmHl1MErnI
	W2P1x4p5HA62j3kLVNvpCCUNwxXlYeiT/nrI177dkzMT5YJ9YXnLmlZgSlaiYbN/wNpGgLzeZxLJ8
	HpDlEbUwtT9HVvMsXmNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSiVK-00046p-2E; Sun, 26 Apr 2020 14:43:34 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSiVC-000464-Hj
 for openwrt-devel@lists.openwrt.org; Sun, 26 Apr 2020 14:43:28 +0000
Received: by mail-qk1-x744.google.com with SMTP id j4so15372925qkc.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 Apr 2020 07:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Nyf5aGGAg/15qe+vPwOXGauE5d4XbIOFWMGeU7FYj6s=;
 b=JwlPfZXW+3AXtbHwkwQmP2h9K+3vqG4FdFGQQp/cZe/gBvMlGQ1OXCElxQsaFEg5WY
 pXfrX7lpEMIRAtTQEco+o4s/KjEe1hxrYBC92GRL+RLy+S3YNzZVSBSqeYLs16hyfh3t
 hVdfr9Ijb1qLopbWOWp5OPXuLNTkOrO2UwWh6K8Iul2aljJtd6sEriq4a693NqCz9Bfp
 3Ke17hMkMkaL7AHGWFD+l3fZr2zF1gJZnCNL53glj0U/uRsMCrCEWu3qcTqTNjE5nINK
 KR4a45wuANwb5rwQjovhFQgu/zdIzG7mA19Ouswh5VDiC7JUAdscGLBxk1PA5dQobHPd
 yi6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Nyf5aGGAg/15qe+vPwOXGauE5d4XbIOFWMGeU7FYj6s=;
 b=MNLG11o/aMzrgTIprbK6LGYy3K8xkBYr6OimDiTcdKqUUKROzWsOIiaNDt3fYq2tLK
 asztVobEIcLQwvNWW9dscGtA0LpRrYEJymv09AsCJ/8wInMpuwa1x2H/wBiFBZfHHhkp
 NOH1F5fYuzpyjg8BXP9KVxc1q5pjMIxQP1BJGaLY6YJ+2P4lrmuF+gvUwbCyr4eFDEsv
 RetyUW/JWbQB+aIcxhegZmrfcLrKhYf7gPuRZUrevuZtCA6R0+SHfJgsCY7UytT3CxjQ
 HQPssydirF8T4F4ptMGBW5GoF5uFG7KY/fM+UhexP1du5wUjouHyln+rz5dzfcIK50i+
 2HgQ==
X-Gm-Message-State: AGi0Pua+6VwrxlJ4M6w/V9gZHUn81op4E5HQ0NRR/VtYZcjc+n5IjJj6
 7Q4AOC+CWwgWYXYbNwV+Py+VRfCD3p9bj1B5Amli3hq8JNs=
X-Google-Smtp-Source: APiQypLL34p5NNHR04l0i9PLRrq1zvfcylGE9DCUksWDYYNvek/y23hi0MVBPOWe5r7VqE1Ho7A9VqdAFMeCgPGDnRo=
X-Received: by 2002:a37:787:: with SMTP id 129mr17824835qkh.92.1587912204648; 
 Sun, 26 Apr 2020 07:43:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419184911.5249-1-szab.hu@gmail.com>
 <20200419184911.5249-2-szab.hu@gmail.com>
 <2fe5c461-85b5-4cc0-60ed-a240a367497f@david-bauer.net>
In-Reply-To: <2fe5c461-85b5-4cc0-60ed-a240a367497f@david-bauer.net>
From: Szabolcs Hubai <szab.hu@gmail.com>
Date: Sun, 26 Apr 2020 16:43:13 +0200
Message-ID: <CAOZt9c8ekg9byVTez4_s5sBEY+FrvmQGLi+q4JbdXKhc=6CJ_A@mail.gmail.com>
To: David Bauer <mail@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_074326_612739_BC91CDB5 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [szab.hu[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: use lzma-loader for
 D-Link DIR-860L B1
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

SGkgRGF2aWQhCgpEYXZpZCBCYXVlciA8bWFpbEBkYXZpZC1iYXVlci5uZXQ+IGV6dCDDrXJ0YSAo
aWTFkXBvbnQ6IDIwMjAuIMOhcHIuIDI2LiwgViwgMTQ6NDIpOgo+Cj4gSGkgU3phYm9sY3MsCj4K
PiBPbiA0LzE5LzIwIDg6NDkgUE0sIFN6YWJvbGNzIEh1YmFpIHdyb3RlOgo+ID4gLSAgS0VSTkVM
IDo9IGtlcm5lbC1iaW4gfCBhcHBlbmQtZHRiIHwgcmVsb2NhdGUta2VybmVsIHwgbHptYSB8IHVJ
bWFnZSBsem1hCj4gPiArICBMT0FERVJfVFlQRSA6PSBiaW4KPiA+ICsgIEtFUk5FTCA6PSBrZXJu
ZWwtYmluIHwgYXBwZW5kLWR0YiB8IGx6bWEgfCBsb2FkZXIta2VybmVsIHwgXAo+ID4gKyAgcmVs
b2NhdGUta2VybmVsIHwgbHptYSAtYTAgfCB1SW1hZ2UgbHptYQo+Cj4gU29ycnkgZm9yIGdvaW5n
IG92ZXIgdGhpcyBvbmUgbW9yZSB0aW1lLiBJcyB0aGVyZSBhIHNwZWNpZmljIHJlYXNvbgo+IHRv
IHBhY2sgdGhlIHJlc3VsdGluZyB1SW1hZ2UgdXNpbmcgbHptYT8gQWxzbyB0aGUgbHptYS1sb2Fk
ZXIgcmVsb2NhdGVzCj4gaXRzZWxmIGFmYWlrLCBzbyByZWxvY2F0ZS1rZXJuZWwgc2hvdWxkbid0
IGJlIG5lY2Vzc2FyeSB3aGVuIHVzaW5nIG91cgo+IG93biBsb2FkZXIgKGkgbWlnaHQgYmUgd3Jv
bmcgaGVyZSkuCj4KPiBDb3VsZCB5b3UgdHJ5IHRoZSBhdHRhY2hlZCBwYXRjaCBvbiB5b3VyIGRl
dmljZT8KPgoKTm8gcHJvYmxlbSBhdCBhbGwsIGFzIGl0J3Mgc3RpbGwgbm90IGxhbmRlZC4gOikK
TWVhbndoaWxlIEkgc3RhcnRlZCBwbGF5aW5nIHdpdGggdGhhdCBsb2FkZXItb2tsaSB3aGF0IEd1
byB3YXMgcmVmZXJyaW5nLgpMb29rcyBsaWtlIGl0IG5lZWRzIG1vcmUgbWFnaWMuIDpECgoKSSB0
cmllZCB5b3VyIHByb3Bvc2VkIHBhdGggd2hlbiB0aGUgcmVjaXBlIGhpdCBtYXN0ZXIsIHdpdGhv
dXQgbGFjay4gWzBdCldpbGwgdHJ5IGFnYWluIGZvciB5b3UuCgpBYm91dCB0aGUgbHptYSByZXBh
Y2s6IEkgZm91bmQgb3V0IHRoYXQgdGhlIFUtQm9vdCBhY2NlcHRzCnVuY29tcHJlc3NlZCBhbmQg
bHptYSBjb21wcmVzc2VkIGluaXRyYW1mcyBpbWFnZXMuCkl0IGRvZXNuJ3QgYWNjZXB0cyBnemlw
IGluaXRyYW1mcywgYnV0IEkgZGlkbid0IHRlc3RlZCBvdGhlciBjb21wcmVzc2lvbnMuCkkgYWxz
byBmb3VuZCB0aGF0IHRoZSBVLUJvb3QgZXhwZWN0cyBsem1hIGNvbXByZXNzZWQga2VybmVsIGlt
YWdlcwpmcm9tIHRoZSBmbGFzaCBhbmQgZG9lc24ndCBjYXJlIGFib3V0IHVJbWFnZSBoZWFkZXIu
CgpBYm91dCByZWxvY2F0ZS1rZXJuZWw6IHdpdGhvdXQgaXQgdGhlIHJvdXRlciBoYW5ncyBhZnRl
ciAidHJhbnNmZXJyaW5nCmNvbnRyb2wgdG8gTGludXgiLCBsaWtlIGJlbG93IQoKClBsZWFzZSBj
aG9vc2UgdGhlIG9wZXJhdGlvbjoKICAgMTogTG9hZCBzeXN0ZW0gY29kZSB0byBTRFJBTSB2aWEg
VEZUUC4KICAgMjogTG9hZCBzeXN0ZW0gY29kZSB0aGVuIHdyaXRlIHRvIEZsYXNoIHZpYSBURlRQ
LgogICAzOiBCb290IHN5c3RlbSBjb2RlIHZpYSBGbGFzaCAoZGVmYXVsdCkuCiAgIDQ6IEVudHIg
Ym9vdCBjb21tYW5kIGxpbmUgaW50ZXJmYWNlLgogICA3OiBMb2FkIEJvb3QgTG9hZGVyIGNvZGUg
dGhlbiB3cml0ZSB0byBGbGFzaCB2aWEgU2VyaWFsLgogICA5OiBMb2FkIEJvb3QgTG9hZGVyIGNv
ZGUgdGhlbiB3cml0ZSB0byBGbGFzaCB2aWEgVEZUUC4KIDAKCjM6IFN5c3RlbSBCb290IHN5c3Rl
bSBjb2RlIHZpYSBGbGFzaC4KIyMgQm9vdGluZyBpbWFnZSBhdCBiZmM1MDAwMCAuLi4KYWRkcjo4
MDUwMDAwMApXZSBoYXZlIFNFQU1BLCBJbWFnZSBTaXplID0gNDc1OTc5NApWZXJpZnlpbmcgQ2hl
Y2tzdW0gLi4uClVuY29tcHJlc3NpbmcgU0VBTUEgbGludXgubHptYSAuLi4gT0sKIyMgVHJhbnNm
ZXJyaW5nIGNvbnRyb2wgdG8gTGludXggKGF0IGFkZHJlc3MgMDAwMDAwMDApIC4uLgojIyBHaXZp
bmcgbGludXggbWVtc2l6ZSBpbiBNQiwgMTI4CgpTdGFydGluZyBrZXJuZWwgLi4uCgooaGFuZykK
CgoKWzBdIGh0dHBzOi8vZm9ydW0ub3BlbndydC5vcmcvdC9vcHRpbWl6ZWQtYnVpbGQtZm9yLXRo
ZS1kLWxpbmstZGlyLTg2MGwvOTQ4LzEwODk/dT14YWJvbGNzCgoKUmVnYXJkcywKU3phYm9sY3MK
Cj4gQmVzdCB3aXNoZXMKPiBEYXZpZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
