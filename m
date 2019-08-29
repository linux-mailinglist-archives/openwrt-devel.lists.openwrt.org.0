Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 467E1A11AC
	for <lists+openwrt-devel@lfdr.de>; Thu, 29 Aug 2019 08:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2NA+S/J19YH2tbKN3IUyH1iMCI8pxOhPR1PRAD+Zrk=; b=o6EkWn+fYoXUHD
	57EtYmabqxLamn0gCenJHnU3vlg4qu1PogtjCI41jAqOTzQLnbXRf6/RibOWuM7BEj842L9NjeGzv
	QQxHGZ+ptJn9B8ftrGC9d8/cmrRL5UJGsweRQWw2vDL6sgQzMh4igCpt4fOfd5fLbyVdGDqi+g0pv
	c2bx8omRzM1csLZ5nKaqWzm7+Od+C5/zMbU2/Yjed1a0vBfDxnDkOe/gedTQVH4nda3DvMInLjBIP
	uSPkT+bGBDlopro5lodTs5frM4qDhIjA9bl4hgi4tVVsqL4m9yk+CwWLkIz0O12U9zveL1DBi/Xsf
	uUwrQeNwY2SM6+1KxNIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Dpg-0002Cv-En; Thu, 29 Aug 2019 06:22:56 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3DpW-0002CY-Dj
 for openwrt-devel@lists.openwrt.org; Thu, 29 Aug 2019 06:22:48 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x7T6MerS027014
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Thu, 29 Aug 2019 08:22:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1567059760; bh=Hhn2YBd09/0y/Ll1vSz+Ij5yuepXcIJWznHEDwXk86w=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=QyxOyANPpKyCnNUVBDe2Bv/zZ1yisx8xidIJijFCboxVZXlJT41uQwNY4RSPRfgqi
 fU2/pSn0cDQO57f6L8gYGI3FO2mJPiGMGw3sJPw8j8c4bnFsSGNBsqCHmrRhs0KRwU
 0F/Vn5ctr2U4ZAkkhycnXS+CtBjjhsxnEILJqoSM=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1i3DpP-0000VQ-W3; Thu, 29 Aug 2019 08:22:40 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Ingo Feinerer <feinerer@logic.at>
Organization: m
References: <20190804110216.65831-1-feinerer@logic.at>
Date: Thu, 29 Aug 2019 08:22:39 +0200
In-Reply-To: <20190804110216.65831-1-feinerer@logic.at> (Ingo Feinerer's
 message of "Sun, 4 Aug 2019 13:02:16 +0200")
Message-ID: <87pnkoo5hs.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.2 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_232246_809561_B9B78B3A 
X-CRM114-Status: UNSURE (   5.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] umbim: add home provider query support
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SW5nbyBGZWluZXJlciA8ZmVpbmVyZXJAbG9naWMuYXQ+IHdyaXRlczoKCj4gVGhpcyBhZGRzIHN1
cHBvcnQgdG8gcXVlcnkgdGhlIGhvbWUgcHJvdmlkZXIsIG1haW5seSBmb3IgZGVidWdnaW5nIGFu
ZAo+IGluZm9ybWF0aW9uIHB1cnBvc2VzLgoKTG9va3MgbmljZSB0byBtZS4gIERpZCBhIHNpbXBs
ZSBydW4gdGVzdCBqdXN0IHRvIGNvbmZpcm0gdGhhdCBpdCB3b3JrcwphcyBleHBlY3RlZCB3aXRo
IG15IEVNNzQ1NSBhdCBsZWFzdDoKCiQgLi91bWJpbSAtcCAtZCAvZGV2L2NkYy13ZG0wIGhvbWUK
ICBwcm92aWRlcl9pZDogMjQyMDEKICBwcm92aWRlcl9uYW1lOiBURUxFTk9SCiAgY2VsbHVsYXJj
bGFzczogMDAwMSAtIGdzbQogIHJzc2k6IDAwNjMKICBlcnJvcnJhdGU6IDAwNjMKClRoZSByc3Np
IGFuZCBlcnJvcnJhdGUgbnVtYmVycyBhcmUgd2hhdCBteSBtb2RlbSByZXR1cm5zLCBidXQgdGhl
IHZhbHVlcwpkbyBsb29rIGEgbGl0dGxlIHN0cmFuZ2UgaW4gaGV4Li4uIEJ1dCBpdCBpcyBjb25z
aXN0ZW50IHdpdGggb3RoZXIgdW1iaW0Kb3V0cHV0LCBzbyBJIGd1ZXNzIGl0J3MgdGhlIGxlYXN0
IGNvbmZ1c2luZyBjaG9pY2UuCgoKRm9yIHJlZmVyZW5jZSwgdGhpcyBpcyB0aGUgbGlibWJpbSBv
dXRwdXQ6CgokIG1iaW1jbGkgLXAgLWQgL2Rldi9jZGMtd2RtMCAgLS1xdWVyeS1ob21lLXByb3Zp
ZGVyIApbL2Rldi9jZGMtd2RtMF0gSG9tZSBwcm92aWRlcjoKICAgICAgICAgICBQcm92aWRlciBJ
RDogJzI0MjAxJwogICAgICAgICBQcm92aWRlciBuYW1lOiAnVEVMRU5PUicKICAgICAgICAgICAg
ICAgICBTdGF0ZTogJ2hvbWUnCiAgICAgICAgQ2VsbHVsYXIgY2xhc3M6ICdnc20nCiAgICAgICAg
ICAgICAgICAgIFJTU0k6ICc5OScKICAgICAgICAgICAgRXJyb3IgcmF0ZTogJzk5JwoKCllvdSBj
YW4gYWRkCgpSZXZpZXdlZC1ieTogQmrDuHJuIE1vcmsgPGJqb3JuQG1vcmsubm8+CgppZiB0aGF0
IGhlbHBzLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
