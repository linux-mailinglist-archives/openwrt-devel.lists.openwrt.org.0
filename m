Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD98BBFEE
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 04:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bkkug3saEEeHiJNzMmFH4W3uFRHe3FqsCvgxaq8yr4o=; b=eEp
	0muW5RfqxkjlrzNdGlmrvCiCcg1dDkbF5+jA1w7UrpWAba3WgA+TGr/5vEZOA+nc9Pf/Wll5DxGWg
	0qD6CjgQ4QQPCmOgsSy6Hy046s3buUV58S0UGEh6ImUZ2D1MJD45zR2l8chpvhhnktnYMV8e/CvRw
	R1OxRCfKiJ1eskU1aiWxNeqa/PvTpfh3RTJqVGIDoCNn/XQNdjzrDkQPruSmumK7zk+iszWeXBOKH
	tIGMUqG8d5d25Yh9U95xg1maCeT84jkxtk6MOJXhiibHT5DGk3orYR2ULWWjk68kslUUMKSmuiwR4
	7iboSlRiIvMrNuloB0tNXPiKObiTjPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCaMd-0007Ol-6C; Tue, 24 Sep 2019 02:15:39 +0000
Date: Tue, 24 Sep 2019 02:15:20 +0000
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Message-ID: <mailman.26691.1569291335.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Scott via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Scott <xmrscott@protonmail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [Suggestions] Streamline localization by using
 Weblate for the project,
 use LiberaPay or OpenCollective to enable people to donate
Content-Type: multipart/mixed; boundary="===============1636253023718460857=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1636253023718460857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1636253023718460857==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-40132.protonmail.ch ([185.70.40.132])
	by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCaMW-0007OC-AC
	for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 02:15:34 +0000
Date: Tue, 24 Sep 2019 02:15:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=default; t=1569291321;
	bh=y1Kn/yIpgEZN5WueYxDymKvDKNqZ5Fz/80dfpTcZlq0=;
	h=Date:To:From:Reply-To:Subject:Feedback-ID:From;
	b=otJwNm5pIYwk6yboyBaYtYQbhv9o6Y4G6jlp4k4lpaUwxYqVW8HeF78O83zdV/Jyl
	 66d9TfCjQXb6vqUZlsLiC69xWTQ67aZmlqeqdqLIvo2V/atmh998/sn/3FnG9pgIJn
	 y42TYUoIylgICoAP3PPYpws4D1ji1MhF5M/0+p+4=
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
From: Scott <xmrscott@protonmail.com>
Reply-To: Scott <xmrscott@protonmail.com>
Subject: [Suggestions] Streamline localization by using Weblate for the project, use LiberaPay or OpenCollective to enable people to donate
Message-ID: <BZOF0Dz1SeXuQjVhtPU_YKqPxtbOegb2YEM_4NGNr0CsfrebtWwxVVY-26CUnClw5faHnwvzP6Af-S6A4MowhquVBtxoMrQOooYBf-2xXpY=@protonmail.com>
Feedback-ID: ZrTxtHCXzMzONvFUwaPWt8Wy727WH0mSWOjNTyiuYAeVqzelo3P71EF-FM1DOPdaf9nqgULTnQtBn6I-cq7CUg==:Ext:ProtonMail
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM autolearn=ham
	autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_191532_978248_5BB583F9 
X-CRM114-Status: UNSURE (   5.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [185.70.40.132 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (xmrscott[at]protonmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

First and foremost, as a user of OpenWrt and LuCI by way of TurrisOS thanks=
 for everyone who has contributed to OpenWrt. As someone who's seeking to g=
ive back to the project via localization I noticed that while OpenWrt has r=
elatively straightforward documentation on contributing localization (https=
://github.com/openwrt/luci/wiki/i18n), the process could be streamlined a g=
reat deal more. In particular by using Weblate thus making easier it for th=
ose who don't know Git and providing significant quality of life improvemen=
ts even for those who do know Git. Those who want to do offline localizatio=
n could continue to do so w/o issue.

For those who aren't familiar with localization, Weblate is basically a web=
 based tool that allows to contribute by simply entering in a localized str=
ing and hitting 'suggest' rather than having to Git clone, download an offl=
ine client like Lokalize, and then make a PR. There's also a good number of=
 nice things to improve localization. It's easy to visually see what langua=
ges need localization work, you can be notified when there's new strings or=
 a few other trigger events, and you can utilize not only the 'translation =
memory' of OpenWrt itself, but other FOSS such as related routing projects =
like Foris. The great thing is that while you can self host your own Weblat=
e server, because OpenWrt is FOSS, the folk behind Weblate would likely off=
er free hosting given their Gratis for libre projects pricing. To better se=
e what I'm talking about in action please check out: https://hosted.weblate=
.org/projects/

As a secondary note in what sounds like was written in late 2016, there wer=
e private discussions about public crowdfunding to help pay for servers (ht=
tps://openwrt.org/infrastructure). Talking with tmomas on the forums it sou=
nds like the current bottleneck is people power. Any surplus donations beyo=
nd infrastructure could be used to pay for part or full time development or=
 for bounties. Between the LiberaPay and OpenCollective, OpenCollective may=
 be preferable because it is designed to allow both reoccurring and one off=
 donations.

Thanks for your time and efforts,
Scott



--===============1636253023718460857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1636253023718460857==--
