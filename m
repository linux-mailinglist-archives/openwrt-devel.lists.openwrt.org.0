Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A85619CBE5
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 22:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JxOe9+qArwpsDKY9dJjPzyfyl8LwrYZouOimFktXkIs=; b=fWJTDYPS/LrduZ
	+QV2EFJ6clcPkIT8iFZe0RSSBurFzpBrvfH2aLYBFp3PY1/KaAFebrO/0mpVCGLe/CquEoeaW3Npr
	ALds+nAJ1nsLuHo86Vhht8y6D7lIAGO2Zc7KBrwfxRYazN0ANkaN+vxfk9u+/fLuhyXeBI9yMdx6a
	SWs5qHleXnHSHGRhU9f48W8hBRM/gezKaFkY49FZcm+rcDTerV13LQrFkKYsDZKckQVRohy0ZJ5nq
	ECg4nhC/QZ98qxPJnobxRK9lKk1r66w/lYtAwdkTupIVPUQHlv8bd0qG0QVvBj4wPSWaL8dKzH0vd
	JGZDmSDBrB4GySZd2V7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK6kp-0002mh-7T; Thu, 02 Apr 2020 20:47:59 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK6ki-0002lQ-RL
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 20:47:54 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 032KljO6019893
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Thu, 2 Apr 2020 22:47:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1585860465; bh=UkFc1f4qaWOaSWmdOv5/IUtaSzgnwnjsLoc05/7LXeo=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=FhiT6Cnx7nt+zIPsLK2iiHDvAWsIojyfdMGmkEk+3od23KIJd5rxS8BEJehWATXKF
 V5vYGasQ9xl8j6TCHuvY6DLvr7oTDjtKRFMDYxeWSQIv7rlUb5MReekcUFcgb1tdqM
 gwrcxRrmf1Fzrem6ib4WqKkbLurmtDt0FVvQ1cLQ=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jK6kb-0002GA-6N; Thu, 02 Apr 2020 22:47:45 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Hannu Nyman <hannu.nyman@iki.fi>
Organization: m
References: <20200402195359.51545-1-mail@david-bauer.net>
 <da920234-c569-d00c-750d-d1997fd6d091@iki.fi>
Date: Thu, 02 Apr 2020 22:47:45 +0200
In-Reply-To: <da920234-c569-d00c-750d-d1997fd6d091@iki.fi> (Hannu Nyman's
 message of "Thu, 2 Apr 2020 23:01:53 +0300")
Message-ID: <874ku1y5qm.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_134753_396866_807A36D0 
X-CRM114-Status: UNSURE (   7.20  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGFubnUgTnltYW4gPGhhbm51Lm55bWFuQGlraS5maT4gd3JpdGVzOgo+IERhdmlkIEJhdWVyIHdy
aXRlIGF0IFRodSBBcHIgMiAxMjo1Mzo1OSBQRFQgMjAyMDoKPgo+PiAtS0VSTkVMX1BBVENIVkVS
Oj00LjE5Cj4+ICtLRVJORUxfUEFUQ0hWRVI6PTUuNAo+PsKgIEtFUk5FTF9URVNUSU5HX1BBVENI
VkVSOj01LjQKPgo+Cj4gUGxlYXNlIHJlbW92ZSB0aGUgS0VSTkVMX1RFU1RJTkdfUEFUQ0hWRVIg
bGluZSBhdCB0aGUgc2FtZSB0aW1lLgo+IEl0IGhhcyBubyBwdXJwb3NlIGFmdGVyIHRoZSBzYW1l
IHZlcnNpb24gaGFzIGJlZW4gYWRvcHRlZCBhcyB0aGUgZGVmYXVsdCBrZXJuZWwuCgpUaGlzIHdh
cyByZWNlbnRseSBkaXNjdXNzZWQ6Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFp
bC9vcGVud3J0LWRldmVsLzIwMjAtTWFyY2gvMDIyMTM4Lmh0bWwKClRoZXJlIGlzIGEgcHVycG9z
ZSBJTUhPOiAgS2VlcGluZyBpdCBlbmFibGVzIAoKICBDT05GSUdfSEFTX1RFU1RJTkdfS0VSTkVM
PXkKCndoaWNoIHByZXZlbnRzIAoKICBDT05GSUdfVEVTVElOR19LRVJORUw9eQoKZnJvbSBiZWlu
ZyByZW1vdmVkIGZyb20gbXkgY29uZmlncy4KCgoKQmrDuHJuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
