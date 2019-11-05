Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D770F0616
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 20:36:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+tKbo6+Dg0ALB/LfXGDoIadOtSet95wjo0ueIhvdVLE=; b=k3bMqXqLIrFvhg
	rzsFUBtsJXNl6VeDZQGSBUbAEaLfVVVxdCgSOzRjgpdwnHJoy40QA9tCHrPIlY7vDd/vDNAstDH4M
	Lm7PBj4db94VO+MCzNmdzdpAyB+BmcewCBXgDSSJ0/SChs8I7/7pWIjoXCjODKRhTbXrnds+2teiI
	6mBnmtY/r416m6WCVatZubclCyUOAgq3QAmANO4E8J3y+GQFkGdXJf5rNb5w7nYSJV8qskMmSKPRk
	qgt3kU5rEUhV6+6FiaR0X7oPwiiIf/ky2Us/YiSyoP6noxQYHUli92CZ39RO7Ylh+a+qpAhHmCleb
	LVEnfMHPXcA6IXmUkSpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS4dA-0000jQ-Tx; Tue, 05 Nov 2019 19:36:44 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS4d3-0000iv-Lr
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 19:36:39 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id xA5JaVu6021701
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Tue, 5 Nov 2019 20:36:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1572982592; bh=Vy5GV7Lzwf28awFw7piojma3FUbEuvmLwcNJPn696h0=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=AQTUlFRhUlPcHSvPbiEzJ3Lwf3ezBQ3RiCNxTPgCmLntqq6NAngXZ8+Mh9SIQ7icc
 HHiRS0Z5rBxgb67diArC7dlFMcLtaOIsMvQkIE9QJm7L5KnNy1nzuD1H+ExP7YVI7p
 udJvZr/Ahx3wZXVbLnKGnWTK6eEd+CUMpKc2x4Jg=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1iS4cx-0004rM-1F; Tue, 05 Nov 2019 20:36:31 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Organization: m
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <87r22m1dp3.fsf@miraculix.mork.no>
 <002e01d593f8$469ca0a0$d3d5e1e0$@adrianschmutzler.de>
 <87lfsu172n.fsf@miraculix.mork.no>
 <00e101d5940c$ad5a1ca0$080e55e0$@adrianschmutzler.de>
Date: Tue, 05 Nov 2019 20:36:30 +0100
In-Reply-To: <00e101d5940c$ad5a1ca0$080e55e0$@adrianschmutzler.de> (Adrian
 Schmutzler's message of "Tue, 5 Nov 2019 20:10:24 +0100")
Message-ID: <87ftj215fl.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_113638_053487_921DD27A 
X-CRM114-Status: UNSURE (   5.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
 gpio-export
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
Cc: openwrt-devel@lists.openwrt.org, 'Birger Koblitz' <mail@birger-koblitz.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

IkFkcmlhbiBTY2htdXR6bGVyIiA8bWFpbEBhZHJpYW5zY2htdXR6bGVyLmRlPiB3cml0ZXM6Cgo+
ICBTbywgZm9yIHRoZSBtb21lbnQgSSB0aGluayB0aGUgZ3Bpby1ob2cgaXMgYW4gaW1wcm92ZW1l
bnQgb3ZlciBncGlvLWV4cG9ydC4KCkFncmVlZCAxMDAlCgoKQmrDuHJuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
