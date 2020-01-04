Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6D01301C4
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Jan 2020 11:35:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PmB1UqqcYjD4JPsojepgAKBCdLX3i1VPdh2yBGUINwo=; b=jaLqwZpuR+ug6I
	tt/KiCXEfpkwF8W/nuGULvINQ6t58AAVidnr34gv5FWBHaO6LacDXmEwNKk2c0nKQWvsXkjan2WOc
	OHlVD/mWiwIb0VeH8R3uJimGlDb6Ftppl/acgvOQcileUnP6EXrnXrtkwikqfTiaKRIpkPGKdq9qh
	Zj2w1NsZL7DFxGbcqB2sDBLpV3noDvUDSBZh1SDZgLOt6UnKar4+nJQhFYNKuV6qn6Gz1TgPUYZbh
	+RUCKx3lL+5eP1W5FRP8ZWJaqSoCV5ofnCQKaUTgyJMFgK1/TBgOFiIDuTLT9ARiN5SdYj3K8ts+N
	UVxzy9p+fwSiIz5TBtzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ingmW-0008Tw-9g; Sat, 04 Jan 2020 10:35:44 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ingmO-0008TU-Hv
 for openwrt-devel@lists.openwrt.org; Sat, 04 Jan 2020 10:35:38 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 004AZSKd020454
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Sat, 4 Jan 2020 11:35:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1578134129; bh=FMrGZbBa1cPk+tVG2NbHfyce6QiUD37NY1jS+c89UVY=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=MNzlb1MPXiwFF9+RPrVMvfxZp1oCtq9AJqXSchMO8Wr4vCAxTk6dImLD6hd11MrxB
 HUDmaCJC3pDm76TgfahB7rxEGgQuav6cK9cs8m5LuhdgJ3AZLr44a1WAsK/eaVQI9n
 F/8GBlm5n1Ugu9bSSso1ktEWngulhtroKANdRODo=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1ingmF-00062K-V1; Sat, 04 Jan 2020 11:35:28 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Rosen Penev <rosenp@gmail.com>
Organization: m
References: <20200104033951.194300-1-rosenp@gmail.com>
 <20200104033951.194300-2-rosenp@gmail.com>
Date: Sat, 04 Jan 2020 11:35:27 +0100
In-Reply-To: <20200104033951.194300-2-rosenp@gmail.com> (Rosen Penev's message
 of "Fri, 3 Jan 2020 19:39:51 -0800")
Message-ID: <87y2unv79s.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_023537_069978_BCA6DDBB 
X-CRM114-Status: UNSURE (   5.21  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] scripts/gen_image_generic.sh: use
 /bin/sh
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

Um9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IHdyaXRlczoKCj4gLSMhL3Vzci9iaW4vZW52
IGJhc2gKPiArIyEvYmluL2Jhc2gKClRoYXQncyBzdGlsbCBub3QgL2Jpbi9zaC4gSSBndWVzcyB5
b3UgZG8gdGhlc2UgcGFjdGhlcyBieSBoYW5kIDstKQoKCkJqw7hybgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
