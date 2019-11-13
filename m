Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B53F6FBB89
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 23:22:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiuUgIIlKSxoWw8G245/qiUUAB7AHnw5TRUQHTU1J/0=; b=bDKD9s90eFX3J2
	L/xlJoRwQqmj6/VtOsD9Qdy8+SKTjWc9uWpihlbstGJY+xf/QlA7cJAku5g9GPYfsTnP9mWiFNbNK
	06rU1iMHdz6ngk3Nb3YitBtBpgqfiz9ZdnoRGYSCxpaO+C9dkqV7lUdXfUvSjl6uzt9L9frw4thyM
	l9PHkCJyETOIuP5B27ydyKCVELhdId9lB/AFM7vlJvyjWrIzF1bMWVBSoKftX+rFT6UV/a5zxQr40
	q7WBT78ZvPs7tv9RYUq09w0d1wGoLaT2Wz+FW9mrUjlnjylop3bFjq02EP4AyvJ/53Q5NZXHLABHv
	zeYHSnKmydEAxmVjfOSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV11s-0003R3-IV; Wed, 13 Nov 2019 22:22:24 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV11i-0003QS-6i
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 22:22:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573683723;
 bh=2gfx/ZQzO8rPaZ5RuCpK45NNLI7+2u7yYd3O1cSF9e0=;
 h=X-UI-Sender-Class:From:To:References:In-Reply-To:Subject:Date;
 b=PC2TsAHqAKnGIMQJ75kB7xQm2LcR4b3H+UW3ioSzyJ+MS0WsMid67KV/1P8J0OUCR
 7HhsfjAdUHTOYM/u/fA7/jE+AVLQdoTka7xx4N1F5SZunY3aKnus3DkRdb3KDMIL1i
 zCYwJNZ8f80YmbpbbckisPdGuVuv3aoE2YPpXC7Q=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from Gasman2 ([95.223.73.94]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MFsYx-1ifns42Env-00HOrt; Wed, 13
 Nov 2019 23:22:03 +0100
From: "Thomas Endt" <tmo26@gmx.de>
To: "'Luiz Angelo Daros de Luca'" <luizluca@gmail.com>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <CAJq09z7aucMwTgmd3RAd9g=rok3FRxQ3xRnm3grNOhUk_WeRFQ@mail.gmail.com>
In-Reply-To: <CAJq09z7aucMwTgmd3RAd9g=rok3FRxQ3xRnm3grNOhUk_WeRFQ@mail.gmail.com>
Date: Wed, 13 Nov 2019 23:22:03 +0100
Message-ID: <006e01d59a70$c6b73dd0$5425b970$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQLRhXuzzmQXHY44rj82kexzKEX14KWR1j9g
Content-Language: de
X-Provags-ID: V03:K1:KRTH/+myOPds/nn3RedHuAzs/0Vk683jJXnRguRLb7e1fCBeAJA
 K53wnKDlssJhWKsrbFU0+V3e72gETPYgWkE/lnrdOHAMHo4n+9h64rQTrO15IMBoQHDThtN
 wu9/xgKB/Dm4E6p48G7ooeEhzNEukVpPZBfI92a6uXgOA6QGAoTAgqFIn/YhtyL6EEUdjCB
 z8g8dqGUrQy2juK25uWgQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:B9QrnujAUA8=:D8Rj7bpIkJvpic2L1Mxone
 TfF+FN5mPICg3QZhbRVVQO5FnFRMHvlnuoCqaUkS/eatPRj3Ni+E3GXfRwkSFDbmBzwhcqsgr
 9u06twxBJnzz8wNlqjkI1cI+xggorf2FDPprbHDOpK8z3mqRj8nmRs+/05pH5ZSRfxbUkAAwE
 6S3CiCC+/xQ6VUg9nPi3TRSeaDf+dt5LBRazUGJ8G7DAL/G5QzuFzrksCGhh7zRLn9R4Ox/87
 Vi6y0LG/3nh1wVfbFjtaZUuoGgY8kouK7vqZnDaGFesq7ISAOMEkCF9bOiiAmefmey34kRIgX
 //KyrAoytmEsqV1EnRVol/Sria7i0GOid22G/L63WXQWUMNRGO6xRLQPfLjLXd8jxmylFYSCd
 uM+ugXXVvKybqG9eIQo85l7AFIVOQbXEZ64ZYnpVYFYysaGSB+5PkRk/drhlFRsf7XILoFW0e
 DEJtorMEseEwgKQh4+rdc4X2r7MPuYlYrRdv4uwbpVZS+o8L0Wr+aY5vZQaLzd6/YTaqh9+jI
 OYkIpTdFAUGh7iPaZYjC30OsI+wHOR5kzWB1bmUJlwVPrIgrDkdFL4uAGThW2xjtfNO1yN2WJ
 qsrMMkrvNP42iXAT6KJ377TDIgCq/h5sgy9XoJWeNy8C0sMYCkPVFWUSw8PZieUPWf3lilhc/
 OKnBqRwFuDhY2OjGJ4qs0EGd0w9FZQIlHOAYhyg95y3ixzTuUaO4UrQlMDp1U5F1oJdzlBLAm
 hLa6CTaDsAxmT9Hz/3ZMp3UhKE3FKOywTWtO6+Ncs9zbpNPYfaO7Fwa9y/BslaS10xXR8BBYa
 cBc7QG/6Bp6DrCEaWC+V8mxmUYafmTVBEgIIJmiqT2kbN3rGV+NPJ2v84jVP2UFQ3KXHwrMeu
 CoiRCB04m/BsxxpXDUouAgrLU1VAm5cYIi0ZMuU50fapIlUVau6fN1A1OHpNPDo7AovxL+gFC
 MT5lkFUnpn4Zdvni8tk0Q1DnRlJ8VufsAcIpevQcJO6xQFjtwLxDCWcSp0Ho1xUbJUC7ODhk+
 OHK0SQ0nPGc3/876vdOqNtfvX+b8l/dlhOCrNK493FKaimMHBYxzdAPiv174w0MFBC9H1Qxd5
 VPz3spOXgpgXZYr95w2vnx754vdN9qgw6/TSCQZC/6lCXAhF+IgbeQmIge0k8qhyHJTF/UIgG
 F1Smc2T1ydzkZBa5l4am4aKRfWqN4omGFm8z9jirHPgfhFhi6FwE04fnsMBhrPODZqFUfcnWg
 62MBYzpRN1lPmCLmEPtVkDjA6JjRP1eTmvxSMdw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_142218_022521_C076A2CB 
X-CRM114-Status: UNSURE (   2.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [95.223.73.94 listed in zen.spamhaus.org]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (tmo26[at]gmx.de)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tmo26[at]gmx.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Download link not working for 18.06.5 and
 19.07.0rc1
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

>The OpenWrt front page has a "Download a firmware image for your device" for each released version. However, the last two links are currently useless. Both show no devices.
>For 18.06.5, it seems that something somewhere must be updated from 18.06.4 to 18.06.5.

Fixed.

>For 19.07, it could be only a temporary issue while in RC. However, if so, OpenWrt should not advertise that link for now.

Fixed.

Regards,

Thomas


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
