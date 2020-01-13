Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1711391E3
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Jan 2020 14:15:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2JGJTikX/W6pONnLfSmHYjvpTjKUHbvifOo7NyWm38=; b=j6UT8b4FCE6KSd
	B+03Yuwh+O93kMUbrUGiogi5P19HTHOi+QlQhpx16i5VV/FF7aBVYPyDNrQyjbTEKjJ1iGbrpTt6M
	ilsJDBeNb6PpS9Kkjy02K4zss80oM6XPf+/OgzPXT7riZ1FV++tRLYW8VisXspz0Me74CRyYRhsAe
	+UgvwHuO0O3fsMDgjcWIHOPd5h95heJZ0KPN0It1V+hbb0jqfyX1RwkOJYVabYzA4fY6ZBrCzULLS
	ML3VjrSTMQgyrMCCTNC6WTAT8rJqeb0qYfTD6tTIGnrEtn3u8TUjjhX/SgypYCE+mHp3s7mKPmkBJ
	XyrV/sxHVyI6xZnS+Mag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzYp-00080Y-31; Mon, 13 Jan 2020 13:15:15 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzYd-0007Hv-NB
 for openwrt-devel@lists.openwrt.org; Mon, 13 Jan 2020 13:15:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1578921296;
 bh=C31UAa3IfVUTuYMvtLhn2zDwl84lIlfSPNGb0txkSdM=;
 h=X-UI-Sender-Class:From:To:Cc:References:In-Reply-To:Subject:Date;
 b=do23odxO2cAbzbtAauRUxCk7znwzqSfgECLMDnSJ1E5njaIJZR/+YybNMUWBMdlON
 hOS1R4QMfyfFVaB/s4pGVbIFff3/XBJEYx6a0lZxLS59uCAdAm8o9z7WbNp8YN0gdy
 q7owObJlRuUpTqdj3ZuqSsZ64+VeFdL2xnKUtGLY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from Gasman2 ([95.223.73.239]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N1fn0-1joPkG09FY-01216k; Mon, 13
 Jan 2020 14:14:56 +0100
From: "Thomas Endt" <tmo26@gmx.de>
To: "'Baptiste Jonglez'" <baptiste@bitsofnetworks.org>,
 "'Pumr, Ondrej \(EEK\)'" <Ondrej.Pumr@skoda-auto.cz>
References: <C02EF912F243ED4F9D4C4104F769FA4869CC52A2@SKDAMBXM02.mb.skoda.vwg>
 <20200110140224.GA209673@lud.localdomain>
 <20200111235729.GH350192@lud.localdomain>
In-Reply-To: <20200111235729.GH350192@lud.localdomain>
Date: Mon, 13 Jan 2020 14:14:54 +0100
Message-ID: <003501d5ca13$73600680$5a201380$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKD11gIW/js3Ue7WLWV5aPW2z2F+AGxwWC4AcOvbBGmcMtHYA==
Content-Language: de
X-Provags-ID: V03:K1:rpn7jkRL8lKAlzT2tJ4DjetAt935oxuAfUnI5UHOrikTrQGS1k4
 FIzCaM0XBx+4R0R8LREOu8HCCqNup/wVavJAveNLXSR/ZARooX02i0LQL8sQ7FjD1oAchU7
 y2fiEB0oEWnLI1Z/Uz+U0dKBi4g7UkhpfPENCJTWAEl5gJrEjZhbCopowC6rSr+8gvn5Sqr
 YUUyF5OySSJy/P9/heHUg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Wzpvp7tjZiY=:1VQ9RfxiljuKxLGD0A57Jw
 2LSPESvoAmv8jZQVh9vY7YkCinllWH+kGl5ynplRNKJHxggEizrUGryoUYS/jWPB0Blv30Ci3
 i/NZoIeSFEF4P0lJoRqKU5/gJ2t2OTdz9eA0JMFKBqPDSiU3M6sybwk8jp9kdOJbOzTLdWRAV
 ocNaMmoT7oVI5IWclKQQra2PTeqNul29L43bjAW4YKygNi/D/7N+wI3MVj+Kz4E0yCArViM1k
 BSxfPOE/Mkhg+pejpjdN4T7IU1oNfmsJniaYnL8+zuaosTMJdm7wngJpqDLmzwxQLjechAyuv
 fiGDMcoOrMHngbGdpXS1VBM+Lg+AMjSzP1Plk6ouv53qD/HZnbusLpvDBwjw3JSIwVB0SvN9n
 8dzdpJgnj7ogrkMaOoVxedJjQrkJPokpAhlDBvyX1M8Mn2GwvZtzgrPzU9unbl/Qx9SLEQlsL
 WOAIK/JhExQt6MLbclV5B0IzqZKX/9QyS3LWhhmWXIfu0WAW9Fx03kyd9aiMkc0UdYE1PIPrp
 FKl5mGfB+wgMHStZE77rtfUDCqOPc5gkkFVjmDgAalwg+ZsIkQTdRFq2KxYB52852Tm7VFAQF
 C5Yx5pkQyoRsB2gk4/d/y4Un8KXTGFpXVVFd06BA+xC38OMlw+SnX5VqSrL92OLQFRQ/07X7k
 woAmrRPxBn1shYnkbPfMufRZcwRrDseCYXOCfHfkhD78+7xNCyMQvpH0kZLfjI4ntlTVRNkf+
 328K+hL3iIi5tDQhAw3LJu7/gaMANb0oMnjKst+fvRgkbMbxfFRA9pwVmT468z6pHHoLeZ11f
 Lv2J70wa3qcbOr/43GiltgAn+zvUcTUR8AwJ+652+DG62g07N+wg53yvr+HGZfglzsdopxmYf
 MBG8UjZRh99SOGjTL5+WGTAWCu4t/1gWi9fNMoOvW1Zv4vtS8uQFxZuE+5K+a219uU7A84XzA
 XPgUVjxF3u1kLEdg1wjMl53VIFbg6w8zMteRLTwecyiisOwQy77XYgCFChPD6v9GZCSQeOr+I
 RE0QOnBV9oBYQVXFFClelWntXrjjLfj1F9o/88yP8otjtSljvUvf3KkInepy2KSYEpzBcLuhZ
 R03T2yNV6AAHSW9bc+mM4d5GUrob27SWR7Dm1FiC/Pb2NCOduN28mQcI/20bg0zuvk0An0BXV
 f3PrxKxP966xPILWp1f/Vnt5BE5eKO6NoywTrqNBrOKcMVjsJPS7uilXQ/PxWPsZxN08Uj4TR
 9Hmb5U6cfamyVEVbGqtxGa5LeUOjOVrdsLgNRDg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_051504_070227_62B464A5 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (tmo26[at]gmx.de)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tmo26[at]gmx.de)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Question:  Migration from ar71xx to ath79
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
Cc: openwrt-devel@lists.openwrt.org, 'Thomas Endt' <tmo26@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> The remaining documentation issues are the following:
> 
> - functionalities that are present in ar71xx but missing in ath79.
>   If I read https://openwrt.org/docs/techref/targets/ar71xx-ath79 correctly,
>   missing functionalities in ath79 are supposed to go in the "Unsupported"
>   field of the hwdata?

Yes.

>  How do we know if it's missing only in ath79 or in both ar71xx & ath79?

The "unuspported functions" does not distinguish between targets, but since ath79 is the future, I'd say this datafield should represent ath79.

> - update download links for all ar71xx/ath79 devices so that they point to
>   19.07.0/ath79 images instead of 18.06.5/ar71xx.  This can be done by
>   changing the hwdata page.  Should this be done blindly, or manually
>   after checking that ath79 works properly on the device?

I will update the dataentries via script (possibly today).
If there is an ath79 image available in 19.07, download links will be changed as you have written above.
If a device does not really work with 19.07.0/ath79, the dataentries should be corrected once details of the malfunction are known.

Regards,

Thomas



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
