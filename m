Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB191CF242
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 12:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQ8dRCCzqDYQsF9uajBU26HMufgtf+sw2eo5kk64Vso=; b=g8J/FBPRlfjudt
	4mTSt7Go0fHEJToAh75JM5j9FO/SHVfYBVnFwd2nWGyNuG/sH2/8JL1CcgFG8R3IswzN4YSP+Z1w0
	/JTk3edKRkV8ftK9CUomp7n444lmZlho3xp3lp/eD1rvHTWdO/fhdCYEHbnHJuuDs/l8pAwZIYq8f
	yFqeeW7iUq/cH/jFlH5WQZv6VPLmD0ZNx4kUk230c+Rud9I4j/Va1fm48ib4ZpKyIPvNzWf6Bz7Am
	Z2WC94hP6iWXXifTZ/9LFHc8iJIIuKnHoTis6GCGliZXq9p2q+slMbVoKx2BUnxwvH6lbujRHzCcO
	oph2/0xsIW8Rk9eKjWtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYS6B-00060f-8f; Tue, 12 May 2020 10:25:19 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYS61-0003eQ-J0
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 10:25:12 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 04CAOhYQ014209
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Tue, 12 May 2020 12:24:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1589279085; bh=T+sstKMxiCoiBmrspC31EA2Au0CMGLRZB+/EgL91zDc=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=lovYY410DePsvi9yerIDE/LMzA7CP3bI6Dw2PAr9AVp5S08Fm5PfxWc/fxCRFP+mP
 rKGi3b1+6oH5ytjk6p/Ic1Un3GIbrOSNFjnVIusTjKy8oGGEmQ7gXffaVvNNzTXBYn
 0MrfjNRvDPw0RIgyNjDF8K+6wz3qX4G7sn+gqWms=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jYS5b-00010P-H4; Tue, 12 May 2020 12:24:43 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Hauke Mehrtens <hauke@hauke-m.de>
Organization: m
References: <447f8cc7-a544-48d8-bc74-ab07e160c174@blazebox.homeip.net>
 <c29a7375-2201-16e9-0a94-00503cfa8c38@david-bauer.net>
 <dc820052-9446-ce5b-b095-bc10926dd935@hauke-m.de>
Date: Tue, 12 May 2020 12:24:43 +0200
In-Reply-To: <dc820052-9446-ce5b-b095-bc10926dd935@hauke-m.de> (Hauke
 Mehrtens's message of "Sat, 11 Apr 2020 17:37:07 +0200")
Message-ID: <87tv0l4fis.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_032510_126480_63F5EA26 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: switch to kernel 5.4
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
Cc: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>,
 Paul Blazejowski <paulb@blazebox.homeip.net>, openwrt-devel@lists.openwrt.org,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+IHdyaXRlczoKCj4gSSBhbHNvIGdldCB0
aGlzIHByb2JsZW0gd2l0aCBtYWlubGluZSBrZXJuZWwuCj4KPiBTZWUgaGVyZSBmb3Igc29tZSBt
b3JlIGRldGFpbHM6Cj4gaHR0cHM6Ly9idWdzLm9wZW53cnQub3JnL2luZGV4LnBocD9kbz1kZXRh
aWxzJnRhc2tfaWQ9MjkyOAo+IGh0dHBzOi8vZ2NjLmdudS5vcmcvYnVnemlsbGEvc2hvd19idWcu
Y2dpP2lkPTk0NTA2CgpIZWxsbywKCkkgd29uZGVyZWQgd2hhdCB0aGUgY3VycmVudCBzdGF0ZSBv
ZiB0aGlzIGlzPyAgUmVhZGluZyB0aGF0IEdDQyBidWcgaXQKbG9va3MgbGlrZSBhbGwgdGhlIHJl
c3VsdHMgd2UndmUgc2VlbiBhcmUganVzdCBhcmJpdHJhcnksIGFuZCBlaXRoZXIKdHJpZ2dlcmlu
ZyBhIGxhdGVudCBidWcgb3Igbm90LgoKSG93IGRvIHdlIHByb2NlZWQgZnJvbSB0aGVyZT8KCkZX
SVcsIEkganVzdCBidWlsdCBjdXJyZW50IG1hc3RlciAoMTQ2ZTE4YWY1NjhhKSB3aXRoIDUuNCBr
ZXJuZWwgdXNpbmcKR0NDIDkuMy4gIEFuZCBsaWtlIG90aGVycyBoYXZlIHJlcG9ydGVkLCB0aGlz
IGJvb3RlZCBqdXN0IGZpbmUgd2l0aG91dAphbnkgb3RoZXIgdHJpY2tzLgoKQnV0IGl0IHNlZW1z
IGEgYml0IHRvbyBmcmFnaWxlIGZvciBhbnkgcmVsZWFzZSBpZiBpdCBjb3VsZCBicmVhayBhbnkK
dGltZSB3ZSBkbyBhIEdDQyBvciBrZXJuZWwgdXBkYXRlLi4uCgoKCkJqw7hybgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
