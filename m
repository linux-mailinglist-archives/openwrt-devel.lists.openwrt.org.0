Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB55E16AD56
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Feb 2020 18:27:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4gj+xsiKvrc93vk6/wmrAcq3FUAkjvtFyoj+SGP7wFs=; b=tm8hSAXU7os3Qv
	KBJvSnw/80nRi4WMSz7udd7FDtuw4e1zRw363wDrDaQlELxhVvxaGD5XfmzyYh8m/QZiJp2978mMv
	mPKEEjzQ+ff0IR30bnCiFrYPgp2nQh3gbbJUdfk8ukDix+nP1jn5qvP7f4/XdqN/7GuAVEDlhQUrf
	9H5oMeZcfbAb/yYmjPhfD7nJhBHd0TQCIzC9UCF62t7yFrn4h9/zXFQAPFdsYd3ONgM06Yc2cHzuN
	edh8tfahb2IeI9rmiGTXPge+7bhGKPtuCFCXO4sHChgiorDlh0cOuo0Wr4IPLr/6+pLWV4w3GEXPM
	yjtn6l/ZL81UApHNojpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HW8-0001g7-5c; Mon, 24 Feb 2020 17:27:40 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HVv-0001fl-TI
 for openwrt-devel@lists.openwrt.org; Mon, 24 Feb 2020 17:27:29 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MILnm-1j9d1D3hZc-00EJYz
 for
 <openwrt-devel@lists.openwrt.org>; Mon, 24 Feb 2020 18:27:23 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Mon, 24 Feb 2020 18:27:22 +0100
Message-ID: <023d01d5eb37$ad3359d0$079a0d70$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AdXrN2xkQEvV/CYAR8+T87DDrJOU0Q==
X-Provags-ID: V03:K1:BVbH8cbq7ZfSP9oj0ASFV7u8IJ1U1nSNKO5G10UQHp7/p3cGrg8
 MQGkg2VTvb0HeMikMyDapHlLs4ipbNTZYew9npfMPPLpkzuSDyFSYBOZGAziCq9H62i3CMc
 THWmRVLX64izaMa4SnKowicWVikCO4acW4QEdo9NRAC/K8Lnb1iqgsrhFx4x1BqZ9h41gN6
 PaLjaTmQZOOPHo8MKHCQw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3Bxp07RBpkg=:+6WHKnIBS/5+G7d0hFsQg0
 /YEMHk3DaKNl03MTFPzI3cODPR84WmnCixCA95Zz9xZu36ENHRCHyBAH9PIDDPABPCCzLLVco
 Z1+vRcN6YUR0sSVZXZ1fSkFGMBQ0J3ElOoWHetkLz2uf3rALO3lny2w/knKP5MijiVKfzKRPz
 vftHIwlFIOb/HF1UL7FhoK9sP5ZvQedeGcuUgLgthbC7UbfsvhWWcn8CO2bXSX8M6h6v4tFKX
 2y5Jpzo+U3ktBei5dukO1NEkfvX6PyDFdh5qRIB/PqSaziRgDc+FQeqt/aY75biPW5r8vF+AX
 MdPSPJDn9rOp8qH4dNv3SNM54XTPvbHCjl9x4+dvWJAr/rxKJ2VhoKasVXMKMY9pzCzYgO22l
 qD1SWR7yzPJXpU7v63LRW9Xz5Sw+umqQeKmre1fkqQk6798fQZml/P1la1tQac7fuPI5iG6Kr
 JaevQ4RcvjhBurucoOWh7RqjNL+/x3ZGt2iTISz+InyC7yNIbKYEvPX4ZDFdfy+zEtAMAYOgJ
 UY1d650J2HQS/+4JM3fNBXwwrHvrNO1EvkzjYz+Nxbcw6bw48lN0rm3Ghh8zhRoho9HFHm9za
 uvrZhMXGBUUBGi8rBSnQoQdroihIYm5lFqwCoG6wg1jXgrbHsdtr7nSrLbovhBSS9DL/9XSFV
 4QbB++2nly6FgHWPfw7Cay2S6ZC8icPmAle49idV+879XF+6Ruw3+Ct+7CwVmFs12aypoq5i6
 IBNGym8aP//88FyhthBL6I+EvKik342KuMY7mIORrXEqxicpPRM2zsGUMRjGV6EWDpEGKd/HK
 TVQS5y7wMvcYJyoVEMCJS7fKoOkS5ftqzUFw2UNeAiUslJzs0S70TmfMIxXmVkFcouQ1t+h
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_092728_243392_20AFF615 
X-CRM114-Status: UNSURE (   4.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Strange trivial assignment in Makefiles
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

Hi,

when looking for PKG_VERSION, I've stumbled across the following:

PKG_VERSION:=$(PKG_VERSION)

https://github.com/openwrt/openwrt/blob/master/package/devel/binutils/Makefile#L
16

Is there any reason to have that I don't see, or can this just be removed?

Best

Adrian


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
