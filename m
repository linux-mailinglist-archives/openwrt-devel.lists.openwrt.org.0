Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4DB36220
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 19:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3ISNTeSwAWbJhYg9p3ZEKRp4XbqhHA6LyvnybRdbfA=; b=TudxwSHe+NMUVB
	YT7PFmL3mKpt+TiPTP1L0UaPbju7kGwqsV+ESeJDiF4mD1sUVd+dMoAasvZYAixQT45oUHeTnuzLa
	D//6RzYCYifxUFx0KtTibeMDGGLisr1c66Q/wJrJ1Mgi9xgzrAq1nK+xMs4zpgVDSr9fSyTBWkt37
	d7iqg5Jh4EePrR5dG6EBgE3g7wtVXIZG9TWfra54dKWyJSaxUg2FzgQuwnqaZOXjqc3U0mVERYojC
	X7bGOehl9WijxiTGn/sagiLwGEmA99Z4D9WCa8QB4iqHONY0Vxfv7qvxPR0S6FOZW5NNTkqI5VQM1
	soADjpr2I9pZ50JTBiwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZU3-0007iU-Uf; Wed, 05 Jun 2019 17:13:55 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZTw-0007iA-F2
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 17:13:50 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x55HDfCl015385
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 5 Jun 2019 19:13:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1559754821; bh=oWuPNo0oO/2Nza9W+HR00SjBcK8NtR1ODOkI/ZrtT/0=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=cQoNrSnSBBS3mC8GYRLAxGTd8JSHYhN3PWJjO2mqhQlTZ012x5m7EHD+BUoi694oe
 q8qBEJ20EQKGWpgIWdMbEP2C8SdD2n+p0TK50s+LvHHQsGcqQ/luAE1IHWs3Y79lak
 gcADvFUQDXrs9RMQI0gWQFIdV8cUgFeJ1WNk2boI=
Received: from bjorn by miraculix.mork.no with local (Exim 4.89)
 (envelope-from <bjorn@mork.no>)
 id 1hYZTo-0007ui-SL; Wed, 05 Jun 2019 19:13:40 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Karl =?utf-8?Q?P=C3=A1lsson?= <karlp@etactica.com>
Organization: m
References: <20190605171030.6645-1-karlp@etactica.com>
Date: Wed, 05 Jun 2019 19:13:40 +0200
In-Reply-To: <20190605171030.6645-1-karlp@etactica.com> ("Karl =?utf-8?Q?P?=
 =?utf-8?Q?=C3=A1lsson=22's?=
 message of "Wed, 5 Jun 2019 17:10:42 +0000")
Message-ID: <87woi0j6pn.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_101348_844042_CA34FC82 
X-CRM114-Status: UNSURE (   5.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] toolchain: replace LEDE in help text
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

S2FybCBQw6Fsc3NvbiA8a2FybHBAZXRhY3RpY2EuY29tPiB3cml0ZXM6Cgo+ICsJCSAgSWYgZW5h
YmxlZCwgdGhlIGJ1aWxkcm9vZCB3aWxsIGNvbXBpbGUgdXNpbmcgdGhlIG5hdGl2ZSB0b29sY2hh
aW4gZm9yIHlvdXIKClRoYXQncyB0aGUgRGFuaXNoIHZlcnNpb24gb2YgdGhlIGJ1aWxkcm9vdD8K
CgpCasO4cm4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
