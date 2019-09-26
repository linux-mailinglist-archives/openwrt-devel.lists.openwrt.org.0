Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57ADBBEA10
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 03:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:References:In-Reply-To:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SezSSmGiN4XbMKoGjxsWzaSyDfApq47Kk4+T8LJ3K4w=; b=U9+wSPHTVSADCZkQx8lyFkz/M
	cqWIOTTedMnMKNfnmghjC1CwYdxUmqWkyqVOw2G4gNrJ8wdDU1um9uHd980X8rhit3dNBSLgn0S3K
	FlY8lwU8iL+6cO/zDcHKDJTk3+V/KrHbpyPBpmZGkLa2j/hK79dLRHuWU3gqA67MVMRYsY328/bdZ
	Nqbbk1hN2D53FaXeZBCoGxWhjudVhw1rn6qhXIww15KeP3aTjX8hc2tgf2yauKXX7FSCZJpQO6aXA
	ryYPIO+XNplHTEmQcXVr7eq2cgoZSTpm8KQVRTreXROQufMjvmnVtWSQ9ny05/kJ8n1KYir49zaBH
	s8zLae2Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDIX8-0001bw-IJ; Thu, 26 Sep 2019 01:25:26 +0000
Date: Thu, 26 Sep 2019 01:24:52 +0000
To: Paul Spooren <mail@aparcar.org>
In-Reply-To: <8204ec6c-5485-3e8b-6763-e0daa20a7549@aparcar.org>
References: <mailman.26691.1569291335.19300.openwrt-devel@lists.openwrt.org>
 <8204ec6c-5485-3e8b-6763-e0daa20a7549@aparcar.org>
MIME-Version: 1.0
Message-ID: <mailman.27257.1569461109.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Scott via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Jo-Philipp Wich <jow@openwrt.org>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Scott <xmrscott@protonmail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [Suggestions] Streamline localization by using
 Weblate for the project,
 use LiberaPay or OpenCollective to enable people to donate
Content-Type: multipart/mixed; boundary="===============3313861443095453234=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3313861443095453234==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3313861443095453234==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail4.protonmail.ch ([185.70.40.27])
	by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDIWn-0000KF-RL
	for openwrt-devel@lists.openwrt.org; Thu, 26 Sep 2019 01:25:08 +0000
Date: Thu, 26 Sep 2019 01:24:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=default; t=1569461100;
	bh=sKj6MKN4eGcdhJ+/E4VuB51QSv/vDCVd73RpY9xNCAE=;
	h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:
	 Feedback-ID:From;
	b=Fwq3XKfDGPvZgfprjvUtfptkNJqez9Fy+Dyolr+5ugPx7MOxK7tNoQvE3gxIKroNt
	 iH7wsg4KIL3ypZTWlWWSGEwApiMqfm8rz5JTaICFg5CyYfXoAo46wDsNY64vRakxJm
	 P3HOA7hzsj9GT5aofMNuZbQfuUed2QiDlOcDEu0g=
To: Paul Spooren <mail@aparcar.org>
From: Scott <xmrscott@protonmail.com>
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>, Jo-Philipp Wich <jow@openwrt.org>
Reply-To: Scott <xmrscott@protonmail.com>
Subject: Re: [OpenWrt-Devel] [Suggestions] Streamline localization by using Weblate for the project, use LiberaPay or OpenCollective to enable people to donate
Message-ID: <DWSuFMxlBr3Lxx2fe7jtlU34cB4CtVDmCNSU-yFJj8hMYNoA5CbXACBGsjqppgas-sFuF6xMJi3g_VTfEDrAKrpa9-lpu6xN90ZMS8DCNL0=@protonmail.com>
In-Reply-To: <8204ec6c-5485-3e8b-6763-e0daa20a7549@aparcar.org>
References: <mailman.26691.1569291335.19300.openwrt-devel@lists.openwrt.org>
 <8204ec6c-5485-3e8b-6763-e0daa20a7549@aparcar.org>
Feedback-ID: ZrTxtHCXzMzONvFUwaPWt8Wy727WH0mSWOjNTyiuYAeVqzelo3P71EF-FM1DOPdaf9nqgULTnQtBn6I-cq7CUg==:Ext:ProtonMail
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM autolearn=ham
	autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_182506_514454_D6C74224 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [185.70.40.27 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [185.70.40.27 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (xmrscott[at]protonmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90 Original Me=
ssage =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90
On Tuesday, September 24, 2019 1:13 AM, Paul Spooren <mail@aparcar.org> wro=
te:


>
> I think that's a good idea! As it doesn't need to be directly integrated
> in any existing workflow nor requires privileges on any Git, it's
> basically just a fancy front-end with translation suggestions for .po
> files right?
>
> Out of curiosity I requested a libre account for a quick evaluation, if
> anyone is in serious doubt on evaluation it I'll instantly cancel the
> request. However I think this is in line with
> https://openwrt.org/meetings/hamburg2019/start#luci_translations
>

Correct, it needs no privileges to update Weblate's .po copy from the repos=
itory and if you want to commit the localization that has been made by cont=
ributors you can opt to have the Weblate commit automatically if you're fee=
ling daring, or you can just opt to have manually triggered PR where someon=
e with merge permission can review per usual contribution workflow. The Con=
tinuous Localization documentation documents the workflow and possibilities=
 pretty well: https://docs.weblate.org/en/latest/admin/continuous.html

Yep, Weblate is largely a browser based localization tool frontend with a p=
inch of middleware components to update Weblate's copy, send out notificati=
ons, and make commits or PR's.

Thanks again for your time. If I can help pilot any, etc let me know!

-Scott



--===============3313861443095453234==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3313861443095453234==--
