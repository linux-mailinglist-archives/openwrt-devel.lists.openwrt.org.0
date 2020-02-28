Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3D9174117
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 21:37:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6HTKJ+7sv10rnK8CbVT8clI0LUlag796xGN4T/eRHfM=; b=I943lnpph9sR8N
	3nJis6pvsS8MMPFbjc+UyLQrYDY/hFIRxW05cFGEJvOUoJ+LIIlxjmePpPQvUL4pydE59ZtZ3R7Gu
	seUG4nV1G4cj4RbyTT/yAUSxKnSlQpis1Q7eaH3goH/3Bqh+Bq/v6P2Tf+7uDGJ3YH59lQq0GIM5k
	vJB7CVYZ3fe7hehjijSMempPEI8Pei0xhTZVMh+lpAa0yMu6vB6IDCwGiCREi4E3ONAMPCWHZZ3Eh
	0bV2+TF4uDWb6EBMR41VA8S+CnxxCqK9jXLqNXJpQOayWy16VSgRwHNwRMjmiMB/E4F12VCSTFelk
	vCmwRvIkJgms0TL6yRbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7mNX-00024E-Rb; Fri, 28 Feb 2020 20:36:59 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7mNL-00023Q-N9
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 20:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1582922204;
 bh=qw9wXMrUTGpDyV/BhIEumjBS405fWUC0acAWBU8pkck=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:In-Reply-To:References;
 b=k0Hy5ALgLRekXpJ7xa2JsQsZDcxr7EuXMANvv0N6c80ojnD1yDHJ5lPyyxH0HWtmN
 6AeqR8oZDkwmGX4P/kY1IDKrBRsoA1InP42kwowHSIqBTY6dIFn6331aKiGxdkCWQI
 yqE59uGFOm5k46UgAxTEycB/MDTb0BcESDGxuleE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mir ([84.149.45.145]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mf0BG-1jb2Zy0i3m-00gWAC; Fri, 28
 Feb 2020 21:36:44 +0100
Date: Fri, 28 Feb 2020 21:36:42 +0100
From: Stefan Lippers-Hollmann <s.l-h@gmx.de>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20200228213642.60d13eb6@mir>
In-Reply-To: <20200228213033.7df0aacf@mir>
References: <0cbeba3c-d296-a3bd-3a66-1d8d64606c75@ncentric.com>
 <008801d5ee68$1c393ba0$54abb2e0$@adrianschmutzler.de>
 <20200228213033.7df0aacf@mir>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Provags-ID: V03:K1:QIO6GIjRNXROB+lM2JaXGu2RiQQ5JJ101RYXuH4vwK0aX1ZYE8v
 BxG/dNLHy2rIci0koifDoaURUi7MQJteGTVyZej3l52oZpQ1mRCxsdFiU/sdnUPEi4WEiRj
 G5PGuTodBBtzTgXyp+W5Yvbrqayh5JjoxdlpNGXOa9KSuIFp/Qzh1VYD4sXEczLN/0vXPGz
 xQqEUYVFGWDJvkujxeDAw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jjIh/Q9H9jI=:BF3VK0n7f2rKy8cBzn0i3x
 J7R5VKJ2ZpqpfpYAwJpkhsLpfE4Yz9y2h9Y6t8S5WatFZTxsSl9StfEuMWao6/o3vVMZ9fkOa
 +sZbWQVWFOZ2/p1hzX4bsP7lJ+7C9RbuAU4Czs/hKxrQvDykFxXc58dgU98ZYpCncG1jg0c0L
 Vgl4gQyz83LcsELCTAeyUwrlcLze5KzMUOLHi5/NHx6d4hYtVAN2YRQbgg7B0NF7OnrZV4MjN
 e9/uhbUNkgImwNiYic0YhZZjpdetP0238kFv6kdQgjm0Lw+fJs9uGUsiAPIxlguA/vrwosCzE
 wc5jfm++PspKQKTo9TOGVaDhJHEtL8QUvRh/vbh0Seg/5GfldOoTjh93TFajsCYWYg8xy2VTg
 6flDXjaE5QTWamscPdFGS3i2/R1qwiD1Hl/W1GzYkOGCEyUmftlgEeIZE0f+FckbkuEdZFv44
 LykfGBnKwHL45A8KQ5vI+D0s9SVk1AS6/wn8W3Vo3hASJtZzbFrp63tDP3ubyu3XlxbjV4Uo8
 UFSBYvGZEYV29t60wzDuKaNK9Mh6wtePfls2gWydjV9iwSWayI+kO5OKSgNlyezEAusiDo9QI
 JV/nirpbSP+MWsBbrz9qcy6UKHaak1k1/92y53RZ0VWfL7s4j4GWdhdBfnQTV/9kaz94zGvnC
 jrHPztQru3b+FTmLOlCrgrq+oAfQpO1u4Q6pD6S11z4y7bF+D+3G0dZJac4ljKybE7KsF/jNx
 /oq0wc76dt9HYQigNLkMCtamvVxSeYyqmtnEfrYg9BFBs1APLlYUry9Gbr7uGid61r1E7RHqq
 UoDwgB7JECTX61wJRlJENPbArX9MEES5Aj0xAEQmG2XbDITlAPSnm6Io1ZuHjtsm4EyuwiQFd
 DNEoFtDzNnd1YqjRT7Evi10BHuAW95gXyZc3+jp9PMvuePvEzi1YA87n/aA7nImSrB5YzzLJC
 IU2Uv3XG6DJLbL6rHPGj1zesmhdyn8fIRLm6fVmOdkjx5kg4sb5K+nlaBbSDc0M/SFWY9L/bA
 aiOENhxedTN2lqtmudTljfO2CswwvURTURxJyVgWTE9hm87DxHq5XjIG0vkdiZ1W+GctLrNOz
 sbz/0r2r3gdsgMOdldInw84BaXMdVmsznGFq9whBYJjz1D9v6lsocGsCi3nyHdcbQ/vocDJzs
 1MnnI8OgsTGGVZWNj6I2v/QhQuNYcXS63zl/ZRH8OHdDe7qLxheQr7n2lILpM90pn4ZPGKARB
 t4J/wrlyq7ST+fSTY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_123648_057035_D177F032 
X-CRM114-Status: UNSURE (   6.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [s.l-h[at]gmx.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] RFT: Add support for kernel 5.4
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Chuanhong Guo <gch981213@gmail.com>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2020-02-28, Stefan Lippers-Hollmann wrote:
[...]
> does break the (shared between all kernel versions) DTS definitions for
> NAND based ath79 devices (breaking compilation with kernel 4.14).

Obviously this not meant to read NAND, but the more modern SOCs using
this new SPI driver (only applied to patches-4.19/ config-4.19) and its
different DTS definitions.

Sorry about the misleading typo.

Regards
	Stefan Lippers-Hollmann

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
