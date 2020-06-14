Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14E81F8AAC
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jun 2020 22:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hog0KVTB5R1PRKDCgxXpG6wunEou3WZlRvyrH1uClsM=; b=BnUThEKnCgDp6X
	74TzDlcWXm3xEWvn7e918W2PaUbBqYyZc0VWq/mhgD47Eaqb11FV9Cf4o6Mb+trPJCmirzF3jSMIR
	hudz2ZLZuJmLpghGdpVeyol/I7eWQL/uI7PwgenapqDrQcbKXl6t6EZXtVl9GbyZh/5rH4IN/piKL
	Lk1cH2Rdso161LUvEdSZ3hOzlP5e2QyxoaBpk8oCazcajfE1xhb9OqMrKWy5kUh1V8LzUfpGJNpnl
	Mwwp83eYC4VDDikiNd4nWnu5Oga9WFxk0TXmmnEbekOqze5l0czuS3AJ0+UuWQ0CYgt8ww72+8KrH
	fRuFZ3coUlQdDC5nqhuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkZGi-0002h7-L9; Sun, 14 Jun 2020 20:30:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkZGP-0002gh-IW
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jun 2020 20:29:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id j10so15001591wrw.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jun 2020 13:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=R7GfH0I4ELV4zWh+B8pgtEyfX15k8PeZqj4RHgAQWYw=;
 b=BK+E56PfAr9s80t11evb4qVghKOAT9B7mCtpjzbvYEGjg82YSswRsXk3nkocsSP+7z
 Pd4pZkUSP2Vf/43Rjo3glDpfVsq7haVP5pESxzPO8KV7QIcCCTDQVj73m5BuRoS/q0ag
 4epuatCE2ar6DighFDMRIiDVXEJrKgwSe4nJxw49eUgZZbm6xf9gWS8ZfKrk6Q+GKoRX
 a/4IEpbS2gfximij1GzXZbE43xWFnqEEPXMliLO3xPlmPeny8SK56fbx4Bf80SQn5mJg
 4qB/OhJAqvjHe0LZQsdBH+WbKVG0hYvfaeiotVKBscEY+ZEnyyjMLPdPMeCmOrQEMA8u
 Rlrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=R7GfH0I4ELV4zWh+B8pgtEyfX15k8PeZqj4RHgAQWYw=;
 b=gYaxAjlOQBIjbHxixpkrnWUpLzxdXGVgD8+cgc/LgC79PXY4LCZneWlrhDwLLsylNO
 syJ1qc6cgLiPFwB/psheEuy3Q9o5WK4myjBqT61e8HsmY/1BZ470IeOepQ4fnlz6nlU6
 RW0y7nw0tCMOl0O1E6KIeEu/exSqJiMpkMH7S6MCHt4N6AI59ULyhp/cR9z8DHKTEzNZ
 fpoAsX7jvZn5QBqFpedHijLv6njudpn6rkF6Cm+Ea231dwwxXq89NdaIZu+BsU/MDJ/O
 /e57StCSFCYnyKTHeopxSQXqsmfXjKI5CFthcFMKDsFJwiwcqRU344GRqXtmvV6g1q7N
 QUow==
X-Gm-Message-State: AOAM533hPIzdLBQqfZA9u4KNY+wtFMiW7E/O9dseypmLQbrZX6szzfEq
 p7EA9naGwRUQwS9TFwzqMzfoJKlfbpznN0A9gDXNxg==
X-Google-Smtp-Source: ABdhPJwoniQGlfnpG/AGa7Hsx7+Hinrpeok/iZyVQliFp4PyHgxE1MmBxJuFAecmDgjNB/Kgq8Ld5h5whveQeXrOnRI=
X-Received: by 2002:adf:a396:: with SMTP id l22mr25055563wrb.24.1592166595647; 
 Sun, 14 Jun 2020 13:29:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200613200852.28760-1-freifunk@adrianschmutzler.de>
 <CAJN1KkzF_nwnw+3kphEuvObkfJ-KAxSExGyxxLZa86B076J7LA@mail.gmail.com>
 <003b01d64288$205364d0$60fa2e70$@adrianschmutzler.de>
In-Reply-To: <003b01d64288$205364d0$60fa2e70$@adrianschmutzler.de>
From: =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date: Sun, 14 Jun 2020 22:29:44 +0200
Message-ID: <CAJN1KkwbDqymxj_KnOW3SaK-RLfS2LvmYk931qvumyx+VDcyow@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_132957_630781_F42B5506 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [RFC PATCH] kirkwood: use real model names for
 Linksys devices
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

bmllZHouLCAxNCBjemUgMjAyMCBvIDIyOjEyIDxtYWlsQGFkcmlhbnNjaG11dHpsZXIuZGU+IG5h
cGlzYcWCKGEpOgo+Cj4gSGksCj4KPiA+ID4gKyAgU1VQUE9SVEVEX0RFVklDRVMgKz0gbGlua3N5
cyxhdWRpCj4gPgo+ID4gWW91IGRpZG4ndCBhZGQgIlNVUFBPUlRFRF9ERVZJQ0VTIiBpbiBtdmVi
dS4gQWZ0ZXIgbW92ZW1lbnQgdG8gRFNBLAo+ID4gaW1hZ2VzIGhhdmUgYnJva2VuIGNvbmZpZyBh
ZnRlciBzeXN1cGdyYWRlLiBNYXliZSBhdCB0aGlzIG1vbWVudCBkcm9wCj4gPiB0aGlzIGxpbmU/
Cj4KPiBIbW0sIGFkZGluZyBzdXBwb3J0IGZvciBEU0EgaGFzIGJlZW4gYWxyZWFkeSA0NSBkYXlz
IGFnby4KPiBTbyB0aGVyZSB3aWxsIGJlIGF0IGxlYXN0IGEgZmV3IERTQSBkZXZpY2VzIG91dCB0
aGVyZSB0aGF0IGFscmVhZHkgaGF2ZSBhZGFwdGVkIHRoZSBuZXcgY29uZmlnIChhdCBsZWFzdCBm
b3IgdmlwZXIsIGZvciBhdWRpIHNvbWVib2R5IHdvdWxkIGhhdmUgdG8gYnVpbGQgaGlzIG93biBp
bWFnZSwgc28gdGhlcmUgbWlnaHQgYmUgbXVjaCBsZXNzKSwgYnV0IHN0aWxsIGhhdmUgdGhlICJh
dWRpIi8idmlwZXIiIG5hbWUuIFRob3NlIHdvdWxkIHRoZW4gYmUgYW5ub3llZCBieSB0aGUgbmVl
ZCB0byBmb3JjZSB1cGdyYWRlLgo+Cj4gT24gdGhlIG90aGVyIHNpZGUsIHRoZSB1c2VycyB0aGF0
IG1heSBiZSBoaW5kZXJlZCBmcm9tIGRlc3Ryb3lpbmcgdGhlaXIgbmV0d29yayBjb25maWcgYnkg
dGhlIHJlbmFtZSB3aXRob3V0IGtlZXBpbmcgU1VQUE9SVEVEX0RFVklDRVMgbWlnaHQgYmUgbWFu
eSBtb3JlOyBhbmQgdGhlIGVhcmx5IGFkb3B0ZXJzIG1pZ2h0IGJlIG1vcmUgcmVhZHkgdG8gZGVh
bCB3aXRoIHRoZSBmb3JjZWQgdXBncmFkZSAod2hlcmUgdGhleSBjb3VsZCBhY3R1YWxseSBrZWVw
IHRoZWlyIGNvbmZpZykgdGhhbiB0aGUgb3RoZXJzIG1pZ2h0IGJlIHdpdGggY2xlYW5pbmcgdXAg
YSBicm9rZW4gbmV0d29yayBjb25maWcuCj4KClNuYXBzaG90IHVzZXJzIGFyZSBsaWtlbHkgaW50
ZXJtZWRpYXRlL2V4cGVydCB1c2Vycy4gVGhleSBrbm93LCB0aGF0CnNuYXBzaG90cyBjb3VsZCBo
YXZlIHN1cnByaXNlcy4gIFRoZSBwcm9ibGVtIHdpbGwgc3RhcnQgd2l0aCBzdGFibGUKMjAuWCwg
d2hlbiByZWd1bGFyIHBlb3BsZSB3aWxsIHVwZGF0ZSB0aGVpciA8PTE5LjA3IGRldmljZXMuCgpZ
b3VyIHN5c3VwZ3JhZGUgcGF0Y2ggaXMgYXQgdGhpcyBtb21lbnQgdGhlIG9ubHkgd2F5IHRvIG1h
a2UgaXQgcHJvcGVyCmluIGZ1dHVyZS4KCj4gU28sIGFsbCBpbiBhbGwgSSdtIGluY2xpbmVkIHRv
IGZvbGxvdyB0aGlzIHN1Z2dlc3Rpb24sIHVubGVzcyBzb21lYm9keSBoYXMgYSBzdHJvbmcgcG9p
bnQgYWdhaW5zdCBpdC4KPiAoSSB3b3VsZCBhbHNvIGRyb3AgdGhlIEJPQVJEX05BTUUgdGhlbiwg
YW5kIHVzZSBERVZJQ0VfRFRTIGluc3RlYWQuKQo+Cj4gVGhhbmtzIGZvciBtYWtpbmcgbWUgYXdh
cmUgb2YgdGhpcy4KPgo+IEJlc3QKPgo+IEFkcmlhbgoKCkJSLApQYXdlbCBEZW1iaWNraQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
