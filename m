Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 221E417C9BC
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 01:32:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmGLG9jmO9qGLacDeGYz0vr1fyqxhXufsbSc9aoTrcw=; b=MmHekm8D8d1SJs
	QCMFS/UvX9Lzq3XVwWjjGLjHd7zizpKltMOWVHR6iMwXshwnIMkGr6PNELWr33ELdTiZ4mYz2diaZ
	F6ZqtE5awRpgHDNlYKnBJXA2Z8dl2h4MlnS2d1aIgq0Pknxit0sPpTeBDeTtdD5mtjhp7rbkk5RgI
	dnwzZHm8r/lYMrx+a/g1N7xOgxJcjLVPYGlpNPjoyVU6+rBKP9g4115z3BJVWe51Warg++d1EciIH
	wPaBELf8nAzgrDEo7P0GHYZG3guurQJ46Gacd08ESezygFwehvT/H8KydL5ZM6V2gNzesDnrdPLzN
	XHz2Rg5sbnjDFajMcC1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANNo-0004B5-UO; Sat, 07 Mar 2020 00:32:00 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANNg-0004A9-Qw
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 00:31:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583541100;
 bh=3roBHn1fPUtzZXtb6Y10bglrH8dqXml2kqdOvtw2g7M=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:In-Reply-To:References;
 b=i+RkQ748HaVErOIqWqNQyIgdnTd3LNJmkgl4TOA8HVvj+sQrGg1ywPCjnzvNboMLr
 FYcvPTul9wZQKcuiIaOaI/BpgtSyzZtp9aizYXLrsQsZl7v85X6G84CGt+Vmq4rODR
 ud8NORPfHFdyE19fw/kdOdRfPqV30F0DgncueU1c=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mir ([84.149.34.208]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N1fmq-1jL7tD3JVo-0123K9; Sat, 07
 Mar 2020 01:31:39 +0100
Date: Sat, 7 Mar 2020 01:31:38 +0100
From: Stefan Lippers-Hollmann <s.l-h@gmx.de>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200307013138.05d8a8fe@mir>
In-Reply-To: <CAKxU2N_YjghwpmSXD3Myu+iUpT1J0hJ03Yv3TT7U5DfZ_wiFKA@mail.gmail.com>
References: <20200305211643.25830-1-paulb@blazebox.homeip.net>
 <CAKxU2N9=pe0RM55CV=YNQYr1jXVDQqH+DzN1+v36cP7s-TmLwQ@mail.gmail.com>
 <8c4b340a-ae84-eb86-ab62-d04ffe2f6b5f@blazebox.homeip.net>
 <CAKxU2N_YjghwpmSXD3Myu+iUpT1J0hJ03Yv3TT7U5DfZ_wiFKA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Provags-ID: V03:K1:4FNvGE/63DkyEaPgadUt1jRzxW4w8the7Agjcvq3Rf/XTEDg0Eg
 6FEYG0WHOjdc+1A0ofzC0lNJLpstaiK4NL19KIIQZgmqex4sSU9KDzlKwweQdPncvKYF+Az
 Y+PI1yZYN7NOY2omnV+7sqNY/89P4i1NVpa2DXXts5OMaQW0Da3+Pz+KYcqCdesgywEoZOh
 gr3NZKiXoVtBJVFuo99GQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UzU0/6UxgkI=:zTXIcrE94nzFD/mXPYUOMp
 xIDdZV8X1xy9RsF1vy7lwAmM6BEbEpBYDjWQCEvT8pSc2hrAd77smz50S1ZvJCpSZTAOKBu9D
 kBdL2MKvBziqY5IwZYext/9rwPMEHSSFqIyKMuCdR0oxHOx9jy2IbkQzRWSEV+jO/Unl3DdAp
 70s64XlkzzFCSIjFe+iC1NxWU/j5v2kbwbdPpknkiSF1zioS1O8kj+4YiUGEhs6SyYR68HDsS
 gFreCbsfAY+seYFxcfVKSrrdPxv47yOZl4GdTd9h8LqX3j4PRMIgQkkae3WJIzlJpjr2ySY6J
 5gh2uZzWgeEOVbESAS90kyOjEtSoYwiLcliXAW9vu96VRT+0OnGzgvFyX6fqfLWF8q5OsO3sd
 csnWZB50obXX2Xt2njbCRQrUdCYmnNcBva2Oj97xfLXcyylL1tt3PiButy5+BmdO0BbksZ0fp
 uU38iItTmVunHnjsVV9cmjbno10LryrRwqFqIOSbnDvk9bCC40Y0eTRspSA1c8DiXdEaaTYCi
 /RXD3sBt93pTb2VQN3WMHGwDpG0eXxLCPa7sF8a65d7zp3uVofvHYFJWBbhj3e06pdIkMusEi
 esCsMDMBTtaNtW1c8IUbqsXkCI4Kc/e9Fy2O5oZ1yHhAIrknCC8dmgF/d/P+9qdL1A4UDO/ry
 5piR5+03RcjsEZ/hFVa/EM20CXQYXsPPpiKbRMnCpwqUfWC1RJ6eedEAVrGxa1zGjLJhvRlGd
 SXWneF4ZIMTpdDsS76XV0eyDuLWW7lwvy0UlDCGG9k9vRx9gAb5UnCBckbVzdbhreLo8K2aQM
 6RVRTONSk7GQDP/IqNEWty4u1jNwKZ+lcvLEruHa7V6IVafYXnn+bcxLMnjJ6Nl0BMbvbfpwi
 bWHGmgiV4clwPeHzRqe07PjveOCxD9OCxHdaXbIvnBbLnhXw2PaymnqnkfxBf7c0DdWwP2+4w
 jW+ljBUD6/btpNQAcYtJ7vJTvdPdHPkc/woJ4gjpFKNryOAIpVIwwbaW61cWbuAaLIo+3Hlws
 UbBi83VKi+E5ON0lmnCJ45VQc7SiPkCtD3TkCgi9iSYFkwOM+kg+J4djOTHhVPHU3Lag3lMNj
 ILiklbbJAWj10HzTJh8x+2dTwi92YUkwQVjmlguU27YOQrWnPW9h04S4Ufbd12uWrtWFVxF4B
 YfxQ+cxA3Am0qSnnFNNsfuAA14hC+MtElVd3njh/ptSpJAUYuRtcc1jed55fCAhcFzUOC3D1K
 MHX8VEsKQ6NnAFwNp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_163153_200930_BD9C5D9E 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [s.l-h[at]gmx.de]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] exfat-nofuse: fix kernel 5.4
 compilation issue
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
Cc: Paul Blazejowski <paulb@blazebox.homeip.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi

On 2020-03-06, Rosen Penev wrote:
> On Fri, Mar 6, 2020 at 11:38 AM Paul Blazejowski
> <paulb@blazebox.homeip.net> wrote:
[...]
> > -   DEPENDS:=+kmod-nls-base
> > +   DEPENDS:=+kmod-nls-base @(LINUX_4_14||LINUX_4_19)
> I prefer @!LINUX_5_4

Using @!LINUX_5_4 would break, once the next kernel after 5.4 comes
around (be it in semi-private testing or officially with the next LTS
kernel), while it's safe to assume that no older kernels will be merged
back into master. It's usually a better strategy to test for known old
kernels/ features, than to consider the new approach as an exception.

> I also want an exfat package for 5.4. As it stands even though it is
> in the staging directory, I don't think a package is available.

https://github.com/openwrt/openwrt/pull/2807

[...]

Regards
	Stefan Lippers-Hollmann

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
