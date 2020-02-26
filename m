Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50741700E7
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Feb 2020 15:15:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FW1MQ50kjx+hIDclCyCP6BMRxGhVGtr/hez5OqDSFlk=; b=NpHd3pHbonJwdY
	QcmgS2mTCc1lG6OaXkOgu1RRreL1MoriNueTmCnRjPSU5+o01pflJ1VWsoxzPIwO7UZuWq4YD72o7
	tDs24vSeSenVgBn1FwpP5D3+FrfygI5hEJ1vtUL1kN+7T67tJG3ziBpfccouS8EApF/ETAvsvBHxH
	Vi1xMggG7ayt/fBTRbuj0oQpHt9+fkia5mt+uYipQxyGONd9xHoxlhK++ochkuxZYaRcbKsLVkHyD
	NOZQkdD0cPxJSGaypJOvV2nY4Q98/MF1xZyDOwT+CXZVnVyGFsZKkcloCVHIfRoHlHDtG0NoGBb48
	bp+iuDOK4lbvwKTcgldg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6xT1-0005fc-Vn; Wed, 26 Feb 2020 14:15:15 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6xSj-0005Ff-9Z
 for openwrt-devel@lists.openwrt.org; Wed, 26 Feb 2020 14:15:03 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by util-01.infra.openwrt.org with esmtp (Exim 4.89)
 (envelope-from <mail@adrianschmutzler.de>) id 1j6xSe-0005tg-GQ
 for openwrt-devel@openwrt.org; Wed, 26 Feb 2020 09:14:55 -0500
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MBUyX-1jGWF72cm7-00CxNp; Wed, 26
 Feb 2020 14:07:02 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Heppler, J. Scott'" <shep971@centurylink.net>,
 <openwrt-devel@openwrt.org>
References: <20200226033744.GA28953@centurylink.net>
In-Reply-To: <20200226033744.GA28953@centurylink.net>
Date: Wed, 26 Feb 2020 14:07:01 +0100
Message-ID: <000401d5eca5$a31af6f0$e950e4d0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQMNKqXIyzhv3iKDdoMwBbnYNw628qW+9GPA
X-Provags-ID: V03:K1:o/sl3F5Og7FqM7LjxSrcxWTe5L910Z5QxieVjqtGXTUamxbADmH
 hQrYdW0kxi2aY7WWDYT+6UZr/MnHo2meLzKzP/KIL6tzzVncoCfj/RQoOZQtnA2nhxIsqL6
 izh3PMufp4BXl7XhDYCGdoyVZKFP/OD94vt4JlvS14RGhSPD3aaq48BOLS0vtni5YoxrFrz
 U9Z3NtbqREu1bRQQ2l4ag==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/12feyl5lLA=:dWcfUQGrgFA5M9mNcA3adW
 bj7ow8YbTmmfclYib/uvMPWaMdFQPOmWOhswRnRfNAzalDcGIUd7VKSgjIw9Ou8cmtFqYp06a
 FMOTBA+RzMQyOKhoG0KqZ4fXjmROemW33U7Fi7x2FNBtQdonaIuEBrCRwOYMNcmQEDw4eQK3s
 6J+xYdpwwG5VOtceN58u2ZMK3/BvHP6IfXPvO4hEBjaJ0xXBxm0opdXKuLG4nfpQgBg9dPAkV
 /GjAJWXOAgUK0CWkjUcELBIGg2pdUhpkCopBdRmb08SxHIK8SOOt70rAUBOzl8h+qJZJmBW3e
 cXuxd4ue20doHrwoiMBjOHQmxneX2dyIwGctpfvPfqe5iQfFESQh5yN675o8AAWzv+TzNw7Ws
 7WZduS7Afb2n3LoOMgkWWptmM9akvzbkD75nMkbagIUNKz1yi3ES59ySlepjwvy2k8enhfS2O
 R9KdrhTko3b4UZpZcPKDibaHefCMYi/LndxG7DCYuibbSh5x8uCkmGvcDQEiODvPcHw0bz3wp
 3KY9AAeC1e1Az6kGGkm1lo6+a1yBFkXT7fMj+AMqZrtyCs8nkjF3rpVrioGJDMnX4F15gYO2N
 9DGAwrcLaxrWUgMlX3tMlIUYancscCe0/FOBi+g75NeV2TnM7aBJS8g0zNtfeh2wATAyuGLyo
 olwWw0JgoeLpXBhhrNmmgIDrYWhnu39ZdJYzAjdXW2EVaQ0zwSlRkVLesbtXsnR6LPxxQQF4Q
 bO/1GB9ipOJcxuPtoqicbK33EMVZmadjSNgZ8/2WqwR/fARqPetaPc/ypdk5kuA1h9XF4NQe4
 Ho7WmUWwwXxpMhIvOMliXQL/nS0pArirfZFOT0yvyOFZC8pkWTfdAPnSKrBpshUYb2WOwik
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview:  Hi, > --- a/target/linux/ramips/base-files/lib/ramips.sh >
 +++ b/target/linux/ramips/base-files/lib/ramips.sh > @@ -478,6 +478,9 @@
 ramips_board_detect() { > *"TEW-714TRU") > name="tew-714tru" > ; ; > + *" [...]
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ramips.sh]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_061459_159511_F83D0BB0 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add TRENDnet TEW-810DR support
 -corrected
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

> --- a/target/linux/ramips/base-files/lib/ramips.sh
> +++ b/target/linux/ramips/base-files/lib/ramips.sh
> @@ -478,6 +478,9 @@ ramips_board_detect() {
>  	*"TEW-714TRU")
>  		name="tew-714tru"
>  		;;
> +	*"TEW-810DR")
> +                name="tew-810dr"
> +                ;;
>  	*"Timecloud")
>  		name="timecloud"
>  		;;

This tells me that you built your patch based on an outdated OpenWrt version, as this file has been removed a few months ago.

Please base your patch on latest master an submit again.

BTW: the expected way to send "updated" patches via the list is to add a version to them; so this would have been "v2" then. You can do this automatically with the "-v" parameter:

git format-patch -v2 ...

> diff --git a/target/linux/ramips/dts/TEW-810DR.dts
> b/target/linux/ramips/dts/TEW-810DR.dts
> new file mode 100644
> index 0000000000..6be20c1dda
> --- /dev/null
> +++ b/target/linux/ramips/dts/TEW-810DR.dts

If this is a clone of another device (as you say), please create a DTSI file for the shared parts.

Best

Adrian 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
