Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F3FF0592
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 20:01:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3Hqh0EteI5Fi64mkfTWW6HiXekIwQqyx+lLwfpoMNM=; b=Na2IQ8+xwLjbez
	glPsmrrWQE5oxrAZf2MDqJgXH/lSR+3FZO96olY59lJB6v22RgaM4tPnDrXMFf9KIugDXgj21rl8c
	AvHmYr6jAOhToL2Iobhr69nd7lUlksc0KPf6gHxK4mmzUZS5gwA82cqU11lx2NBAxgq2nXlWSmalW
	NtGGouC7ja4iwbL0JfaRgcCNOkypfCBGKLOH32EMDiHhLqzaqtyjIXH0/BQhycz1J7GnpNrvXlwC8
	3d0doARsKEVncE4vTlbQAEDOJlWf8HVYtG2Xdl0LPbcECTdSP9vT9CBdXH3gIn21d176foz0xH7BH
	EL81Ly9KfKck65opMB5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS44u-0001xA-SZ; Tue, 05 Nov 2019 19:01:20 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS44o-0001wU-Ch
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 19:01:16 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id xA5J144X013421
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Tue, 5 Nov 2019 20:01:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1572980465; bh=dZHcjHqRkBHSXsbhZbImG/PJ56l7QzRavmwmdMDNGHk=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=LZ4rn2fJ1VG147sp+532EnCcxO0oFC8Jw3GR3ik3/99sorsUPa6G2QBvAedZ7awSK
 rAlptQIQDFeSrDkAR7UmbdbmWp+LXRCVhymEPcx4TXFTlq7/q3JEzUPbtV9Wfbr3s1
 c5LJOC+AGhXC6VToHvkXr6W2KxcdWCr+zjNpspMk=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1iS44e-0004kv-35; Tue, 05 Nov 2019 20:01:04 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Organization: m
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <87r22m1dp3.fsf@miraculix.mork.no>
 <002e01d593f8$469ca0a0$d3d5e1e0$@adrianschmutzler.de>
Date: Tue, 05 Nov 2019 20:01:04 +0100
In-Reply-To: <002e01d593f8$469ca0a0$d3d5e1e0$@adrianschmutzler.de> (Adrian
 Schmutzler's message of "Tue, 5 Nov 2019 17:44:21 +0100")
Message-ID: <87lfsu172n.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_110114_766919_6E3C41E6 
X-CRM114-Status: UNSURE (   7.52  )
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
IEJ1dCwgYmFzZWQgb24gdGhlIGRpc2N1c3Npb24gaGVyZSwgdGhlIG9wcG9zaXRlIGhhcyBiZWVu
IGlkZW50aWZpZWQgYXMKPiBzdXBlcmlvciBzb2x1dGlvbiAoZGlzY3Vzc2luZyBuYW5kIHN1YnRh
cmdldCk6Cj4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9wdWxsLzIxODQjZGlz
Y3Vzc2lvbl9yMzQyMTM2NjM1CgpUaGF0J3MgbWlzc2luZyB0aGUgcG9pbnQuIFJlZ3VsYXRvcnMg
YXJlIHN1cGVyaW9yIGlmIHRoZXJlIGlzCmNvbnRyb2xsaW5nIGRyaXZlci4gRS5nLgpodHRwczov
L3d3dy5rZXJuZWwub3JnL2RvYy9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNi
L3VzYi1ub3AteGNlaXYudHh0CgpTZWUgYXJjaC9hcm0vYm9vdC9kdHMvYXJtYWRhLTM4NS1saW5r
c3lzLmR0c2kgZm9yIGEgbmljZSwgT3BlbldydApyZWxldmFudCwgZXhhbXBsZSB1c2luZyB0aGlz
IHdpdGggYSBmaXhlZCByZWd1bGF0b3IuCgpJZiB5b3UgZG9uJ3QgbGluayBhbnl0aGluZyB0byB0
aGUgcmVndWxhdG9yLCB0aGVuIEkgYWdyZWUgdGhhdCB5b3UgbWlnaHQKYXMgd2VsbCB1c2UgZ3Bp
by1ob2cuICBCdXQgSSBzdGlsbCBkb24ndCBzZWUgaG93IHlvdSBjYW4gY2FsbCB0aGF0IGEKc3Vw
ZXJpb3Igc29sdXRpb24uICBJdCBkb2Vzbid0IHN1Y2sgbW9yZSBvciBsZXNzLiAgSSB0aG91Z2h0
IHRoZSBhdGg3OQpjb252ZXJzaW9uIHdhcyBhbGwgYWJvdXQgdXNpbmcgZGV2aWNldHJlZSB0byBk
b2N1bWVudCB0aGUgYm9hcmRzIDstKQoKCgpCasO4cm4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
