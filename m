Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39026142015
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Jan 2020 22:06:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLUH1R9vN/GI3mWW0HVdBiWiPlUf38xzgLVSPff4Qtw=; b=mn8PWX5nTxsgbs
	ZUkGFrec6fjLF9a1gjYb8iBeeVjTpguAkblta/Hcc+Q06VjneYoMUgL7w96fTnWc0ewy5F7Rwe2dk
	TX9yl5Vl5qG9Eyvqj+XpCut+3Yk+4ECNM3ug0OorGHgPM6hdK8S4+1wEauDOvokmUssEgSUsND5Zi
	BwpllHMk7etd2wOU60ZgWwlgmef5Nc9jxRfiWtAZVg6Vx0YGsn65ZJz5nMOEhv+gOJIukFWTAsrvt
	G1aPuZisumIt7HAE34GC1VfVq7djibr341+/E2bZz6a0OuS/ge5DRFB2WHg5PwXyGwzYtRZ8jDmTM
	tftqSoQf4vrKltQ6hv9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itHlg-0008Om-JJ; Sun, 19 Jan 2020 21:06:00 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itHla-0008O7-Gc
 for openwrt-devel@lists.openwrt.org; Sun, 19 Jan 2020 21:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1579467943;
 bh=hjGyZhrVfzFkhJZTu1AxME4MLwgKRxLSNx1nGGgCWYA=;
 h=X-UI-Sender-Class:From:To:Cc:References:In-Reply-To:Subject:Date;
 b=N+BviGVshO3wtmuV9PbZ4VftpI4aKLrzWtnEafQ+iPVm1XCvtAGrLfjk7ZLuFvZvt
 WU+dJ7iPC6Dhv1dkznvztEjnwOovvNQzDWwS53mb1YMhWpoWqI1nOLamXpHaX9WvP9
 9AsN1F+g46qZknApqtkrw2xQ6b7YJuK+yOi/DfHg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from Gasman2 ([95.223.73.219]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N49lD-1jbO1X42vh-0107nz; Sun, 19
 Jan 2020 22:05:43 +0100
From: "Thomas Endt" <tmo26@gmx.de>
To: "'Hauke Mehrtens'" <hauke@hauke-m.de>,
 =?utf-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
 <20200116100514.GB84286@meh.true.cz>
 <c252d8df-d0af-b0ec-ea21-7ade8e02da50@hauke-m.de>
In-Reply-To: <c252d8df-d0af-b0ec-ea21-7ade8e02da50@hauke-m.de>
Date: Sun, 19 Jan 2020 22:05:41 +0100
Message-ID: <000001d5cf0c$3647f3e0$a2d7dba0$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQELzBEOAGhwSqtMY1TBBYNrt++LPAIaC5lHAkFxnlWpY6BywA==
Content-Language: de
X-Provags-ID: V03:K1:ofJ8rlfJzdX11HoB2yCiVZcGoGa9xSZbZ+4iKho4qWRVkiPcobI
 w/0g7KrDJ9kYwM0EZDHmvXkUwQeBbu2B7ug8FqKWBDMg2nQZoQxvEypVsdMpX7TxDcD0ug+
 fYdOilAq+JPLHXm5VgQ+mYZT473ekIHs39bD8a2ji1WoyPOESezgrKBjtuCf+5cAM8RQxdE
 Z5y/b/+DPYqoeop5edkEQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:s5K/iw0FoSo=:jwPYwm+TMi5JYPN6c37QUy
 0a8BAolg6uOfaByAG6y2/nvF7SrGIOfN8uVvNUyEgs+HunYT5KfgQvlXNkB0UrbrNpGtve+O9
 nPofYkMMwvhDaUpdMcwMz1TfKTQfYnRkXaxEYhUVQPvcBzynwdgtA5TTl6Lz/Jcx0E3EFaluc
 7kTZZwpcJu4Wan/E3nd6ZsKv1FOjl0FtOWuYvSyRcvBCr8i8z+H7GY7cwbg4TtMjJZCVm8lSJ
 OaYmbuOrzHhdkA/YrGujbmIFdK6fC8zXiJXVfKj6am9VITeoglADWYZakDqE5/Sm6HcV2Wz4g
 Nr6YlZClTRcQnVQBWij6eFGb2z3dl0kUz4WMu//tZ29p0bDSAadxehHvbPRZ1lXrk0RxuqFFQ
 HTr0UMTXPqtYV78KYxJdum4obuyUkBxv/BzhkUMt9nh8Z1JRhhNHjh8784WKK2rp8/IJQtd66
 kyopsZvwptS39JTP9j0i3lqC8hquzb0I9MXyhR+f7zHpVo7V+JSMWD7/jqpnUv+R858I3lQxk
 MYRuF1T+T5WGuxfPDPGo9GwU2WXlzLkDQnDSh9VbLlUftLqY610mFjE/Uxfz/2gRBTwJvY+fh
 TcwY8xOMhSLd1BtMsVQ0bVa67O2lcByi7Hjr4DDG1/K+6ndoxTuMfCgchZnexokqZ/LAf1PCE
 uYd7cChvBw8vzS3nULG/uDdem2L6SqETln+iMUDoHywxsWWjmNEGcCcNaNG4fLpRPKiQtbpph
 xqXFhlJDxV1bA01jshkuCxOOOGk2Ay7UO15fPNQ1LaLFOpANuSXYJzzz2gxtS50iI6wDvPWk2
 oCxl6REOssVTYjODfWyxjv1aakKPejwBJqjcVYjtw6QznapbYwKTbRO+z/Sjl9w/WsVAzRF2r
 saRD+wGJAeyBKY0t3S5KToUU03X1io5ClPu1+RexwF4In5iLNk4qKoHlLSoT3qpSGB3oxUyZg
 9coEWHMYn9LGA7OvOZe8sDFlxawgMsRLacKDUzve/yYItSlZkOK6+ASI9AmBlTmH8dZdgU7O0
 6lwiB4JoP14ze7fGeV1Vz6WpY/VLJSGPzD5DiVRFm3IsIbP/7t6GEoL8muUaOefzEfqglJaZv
 VNBOYt+We9sg6yq5GcP8//9yK5K9GUtNJlixmi0Httebm++UXAygNocdVccPfkd2EQxa+Lq/c
 P84f+WE08knn6iTFWfK1U7Vd0V1TvLiKtNvQfDDvhwtR5UXIsPj5+V/IrkpduR0Cp8h424RIH
 a1bmC8t6Tdeiroks8zvw875xaXE3+LjNQT6oHMA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_130554_881721_A3C2501C 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmo26[at]gmx.de]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [tmo26[at]gmx.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] OpenWrt 20.X release plans
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> Von: openwrt-devel <openwrt-devel-bounces@lists.openwrt.org> Im
> Auftrag von Hauke Mehrtens
> Gesendet: Sonntag, 19. Januar 2020 18:17

> This is just my proposal and I would see the dates relaxed, it also depends if
> people have time to do it and so on. We can also do two weeks between the
> RCs and do one more like you suggested a month ago.
> 
> The week between the branch and the RC1 is just to setup the build bots for
> the branch.

> Someone has to take care of the release and this person would then
> announce that he wants to tag and build the next RC some days before so
> that people can prepare. The person can change in the release process.

> From my point of view the delays were not caused by someone saying that
> we should wait till something is fixed, but that nobody did the next step and
> nothing happened.

IMHO we should set up a generic timing with durations and dates behind.
https://openwrt.org/docs/guide-developer/releases/release-process is already a good start, but is currently missing the RCs and the weeks behind them.

$someone, a timekeeper or release-master or how you want to call him, then regularly checks the (release specific) timing if an action is due and informs the mailing list about the actions to be done.
Dates can be flexible, but current timing should always be updated in the wiki accordingly.

Having a timing (and someone who regularly checks it) would help to be in time with the releases.
Keeping the timing updated and communicating it to the users would make the release process more transparent to them and avoid uncertainty and frustration.

Regards,

Thomas


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
