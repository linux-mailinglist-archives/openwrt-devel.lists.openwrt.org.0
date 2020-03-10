Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9151917F75B
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Mar 2020 13:26:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/w3ZxM7dnRoHN2u7IPLrSOr8bYm4RCjHCd967QuMnYA=; b=uwaqslgs0qThzv
	sHFNBwe58q6Mz0lE2LeNbuUiNl5NzdyHJl8ivAwAbGHgzTtL6IWbhLqeu/2H5tnijKgN8Kdi9UZx2
	XoPslIekylm03Y6u4rJvR0hyQkfxWAIgWVBIpfH6pEyQxgEb2D8IEbaG1HHB3nImnaNvLpoMEgDBW
	H2xcAZYGkBBMKbOvRWF/uNw25ier6089vn+C34u8MQaTRXEXyWTn/wTMQ3XD++PPhJQuJgu41Fexw
	gD8bkkxRHDg4zNJiQOV+C3Jqaw6XA0Jdy2F17XKHCcOLydBXrAHDcAWLHXlxa1oz0RywkV7ETihej
	iaqvLIicwjbjVCMMQ3CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBdxa-0000SR-Gc; Tue, 10 Mar 2020 12:26:10 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdxQ-0000RY-Ia
 for openwrt-devel@lists.openwrt.org; Tue, 10 Mar 2020 12:26:02 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MG9Xu-1j8Oq41kdQ-00GYhY; Tue, 10
 Mar 2020 13:25:52 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <cc@80211.de>,
	<openwrt-devel@lists.openwrt.org>
References: <20200310120204.6704-1-cc@80211.de>
In-Reply-To: <20200310120204.6704-1-cc@80211.de>
Date: Tue, 10 Mar 2020 13:25:52 +0100
Message-ID: <00b601d5f6d7$0a1111b0$1e333510$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQHICgn7ax1xXH0zRdEKD0ZMYgzVyqhdmb7Q
X-Provags-ID: V03:K1:QlYPWgCJ0/vwQ8/DyyyXgcQpy7nV1VGXXgSiLaBcwiphHnVgwjU
 RlgQxA2vlhi3hqirhZ4i+JsJTFdhq2xmlkDm+zJ9YHMV1ucyNwa/imJzeqQwi1/z84bHFV/
 9EBBV2T6ser3bgG1f2ettQV6Y+UiHk/po6SI5ez3CEB9gb4kS5E9Xjr9WGHjrZKKTRcnSpB
 M4yI6aGLrSVt9mMWHJJ6g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZAtUz0rFOug=:NLDMAY66eQbhfLkQoDovMi
 3bPH7T60okAWv4DMHzflwsOMO+Y6NEMoG3MtEfcs5F9GHoUNXXit3TDw7B+/cE1qiNTxVJgIv
 Tl5qXMhmlPVGpRtCHgl++wn2Qn6khbbARTjBcqS2dSagIahyHg2+t4qVoo9MqwV48HHEBh+B6
 bfQO4/tLjYBTorlHd0WOtxqugCuw66OzCA5UdIHIP5b8N6PX7dfVcEWo6fotXv/S8Pmt3EZk3
 CHqelaaGwluexr9n+VkBQ2X6J7vz80z/43u01V9ssc5P9fkHLWfZ0WRyUE4WcVGlx2ciHvrFi
 JdWMmnm0/2OD04k1PtnP7jqrMv7a1H/o8mUuxTab8kL+4E4FeXRLsrGUw7HPHEzbQ76P3+d3+
 ZyXB86oX7CeuhrEbcZHzf5NNxesLrD5+tFu89FVPvO020vdHenja0CvAwR37e6Mmg4x1pXEV4
 wBjA3pm1cgbPCVDu6uU3mLxTCn2FjdF/qVNb4r7IQ0sy9T6RZaKu8n159Uthy7ElRCDP5GYTI
 7UHpg3V0tKSHz91i8Zj6ySuU1r9N+d2fIuJ7igB8zbz0PUspY+XT347U76YaxZ71exf2BDe4H
 qxut53KTmSSRp7YllEZgEtTX69mF4+LjY1xb6vvkphZ1YzcqT1U5536p7aUG7ZsRjrL/MdK0Q
 qPSvaV2Zzi/Z1vRORxGEqqH3kgFv2yBkP1mvPgHlOUUfe62LW4752Ixjjx+3xQndaQQ6ag08i
 shk2CR5PTpLYKuT9hf7HvUde2dvrw12Rmlnt+rnLVvIKoBd/n/fdCrvEH41E7FzNOWwdoXUE+
 aGVAhaLrGt0F2YKJJkVRXsTAqtge5gOUAmjSR1YuHoszAUQ1rWgKEC+q/rph2W3yfKntB0Z
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_052600_907584_41003C72 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] .gitignore: ignore all .config* files
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of cc@80211.de
> Sent: Dienstag, 10. M=E4rz 2020 13:02
> To: openwrt-devel@lists.openwrt.org
> Cc: Catrinel Catrinescu <cc@80211.de>
> Subject: [OpenWrt-Devel] [PATCH] .gitignore: ignore all .config* files

Why is this necessary (-> commit message)?

Or is it just a cosmetic replacement of two lines by one? (In that case, I'd
prefer the specific lines).

Best

Adrian

> =

> From: Catrinel Catrinescu <cc@80211.de>
> =

> Signed-off-by: Catrinel Catrinescu <cc@80211.de>
> ---
>  .gitignore | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> =

> diff --git a/.gitignore b/.gitignore
> index 6549af83be..edffba9c05 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -3,8 +3,7 @@
>  .*.swp
>  /env
>  /dl
> -/.config
> -/.config.old
> +/.config*
>  /bin
>  /build_dir
>  /staging_dir
> --
> 2.17.1
> =

> =

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
