Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EE9125E6A
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 11:00:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zzxQuaiDk4qKL6kWmg8FjxfYRZWpFI0R6GzwxKY1x04=; b=FSsu2Kod8Zxa2K
	+5rmRp2utHTZlLmHfDfRP16sRh4iuxRayFHbJNNagmPFqYUCXK4TmSfWDTCfW3Fc6gSUpoD3ol1FB
	bvQHZvNTc/dAIgM3/mjLVpU7Fi2v4/+Drgh3jsC+90Qr7aTuOGDa5HHBP0nc3/ConF7lr6t20/wgS
	WYmSnMWnByNFYcq1DBR3fCVqMrsvr7T0mY5PLVZeVMzPPZHKUcGsmchW1Z3Cr4jvDYieOQrduzEI+
	o1V9wp/6HRELDThxFqrkHN5XTaPcy7UREZvJafshOUVnmGq8r/m1Cqu5uxRQjnfBS0Pv7gHLVZfQV
	yVq2TNSmyP0AIx5oY7Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihsbV-0000ZE-Sj; Thu, 19 Dec 2019 10:00:21 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihsbN-0000YK-El
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 10:00:14 +0000
Received: from [192.168.100.126] ([83.135.172.210]) by
 mrelayeu.kundenserver.de (mreue107 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MfqCF-1i1xHE49En-00gDkh; Thu, 19 Dec 2019 11:00:10 +0100
To: jump users <openjump-users@googlegroups.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: ole.m.janssen@gmx.net
Message-ID: <0e990db0-d461-83c8-c3c7-c80d86c51b8d@gmx.net>
Date: Thu, 19 Dec 2019 10:59:48 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:C+0hL6PVog8ByA9rtfmd25Yl5AGV653Ky5taBxB38zClKuLa0gD
 TGAZ94zmi/6/SfU1l5a2gXxkCtVrmRv5vCCHyMP0lLiunTwwNAQ66HU1CGHYmBUzTrxASml
 PIRk1p0vhjdDRJy/A950+Uup+ynZaYOemspCEoKP12EBTazIVW2QvelTHU9zvPVu/NXsLqQ
 1MzwPis26jVlzKjtWoo5A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5qPDab9uNO8=:lI/E9LCqQtUsyoHNoB9XWe
 8EZSfvbSRtHBbDk+QWdF2qXqORYh/zBlFwP7lRlX1oiuB+ESt3XGYNfvFEYOOe5jRUvFwoNmR
 WR22ILSWnxXZ4gXwg54KIrKcjl9SV6WeOfzzLaAUKF8UE8mO4wphYh9A79W60G+DjN20btXK2
 avDx7aDxF4+tTqSTztK3juS0QY/mEKsHjvMxKKpK81n9W378GlKP36jTEpWkQgf2ItEq6pKSI
 VW9r8W9BmW6ikbQaRV2ctWVCEuG02ViAjfgnVTiZbv6s2dXd9ffPYl9mKF6JFLoHNHKygZzqv
 YJJeqHvmO8WE6d45ha5SunyWKfy1jwRz4LxLriXfWFQGUuEI4uc3ZvJWiAAU+GsOI8xK6gxLF
 l0XgztjvLF1a2dJ82LUIHvh70VfM2IlKvI07VwK/LjBoDRel0pfcIqAT4e+cITEVTJUYHSggJ
 Vu3VlNJoFNvFgpi5Vzs1tdmfD3zS2bUIbp1tXKXmCCAp27ol03JMmKP5H0VgzHr1IWEheEdPA
 tfiJRguSa0/DGyPuYekROexx7RvDt9f1uP6u7rpPSRW6uTvCkMlgEUm+POtWXMkX6T+FW6E24
 rBZxKQsnb0hkQOFAAFD33BvjQIiqzUcH94yX4DUbbSPFzydjTSENMaXDiYf/iN9dPNvrbQznF
 eHVrlBs/8DrdZZ8md1F9SrVOwvvadfUty9za53Vbs7D7CzjazOkuamhAsNr8VCQ/QWzFVLXQR
 s05Vofip7Ny2syWDVYGRIbCop02m1Ewz6p+Zg1Sf3+ZkKit9xNLzsT63+dwYUg77UG8d/pB06
 aHCberIe1YhsmlRg51BbDGh6zkWZZ3ozHuFP4ZoyYj8IR+ohhs8XfzC5ECwogNyTKc0cJGwfv
 iU0u+vBn1Mkz5ZB9NJnOgwjh3WzPbI4XB9/v0YsPEwwC1/Nwa5O2AR4482rNNfywb6BHz73lZ
 60lL+inMly55s0RQ8OWX0ElDNR+nWWxM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_020013_785626_4A1EEFD3 
X-CRM114-Status: UNSURE (   4.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ole.m.janssen[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] test
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
