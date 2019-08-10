Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783D988B81
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 15:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9SvoD5USC2OmdwY3z9VstwYtk5isoQnJyzn95XAGbUg=; b=F5m
	YHxhEGHuUpp42TuXPMqoCLNS5PHZWEpGe/W/7Mc86R2CSX7OIOb8DXU2s1ZBSz+hqS4ES/VABoMv6
	j5DcSvvCR9Wu5K7kIxdprPohTlot9wzXSjcTWJUYpqGnMCZtepyRfbvfAvlMaNpGI+Nq4CgySvQEv
	OYD7OakS30dyLh6VZtfDIJd1MC5VXh26Dx/82M/u+xwvN4FlIgHB925yKfQGJXgtvxpdnM2YVunBj
	UoxZYNWbGACcyj1PF5Ym3Rx4OpDDlJNm0DEOxgq1kqFfThxuzeCQXXAJ2lDyJtzRCHnXpUbNq/G0E
	NsK8gIcm/WHcmu26UqP3ucG2xox6IPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwRC8-0003td-1m; Sat, 10 Aug 2019 13:14:04 +0000
Date: Sat, 10 Aug 2019 21:13:46 +0800
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.16115.1565442835.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Joan Moreau via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Joan Moreau <jom@grosjo.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] Has OpenWrt suport for Powerline devices
Content-Type: multipart/mixed; boundary="===============6446906005810380539=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6446906005810380539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============6446906005810380539==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from grosjo.net ([94.130.37.163])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1hwRBw-0003qD-IL
	for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 13:13:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=grosjo.net;
	 s=dkim; h=Message-ID:Subject:To:From:Date:Content-Type:MIME-Version:Sender:
	Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=Ix3cqkT+7GCPPba0zMVbrsCsj2tOT0JZDmdr3c6fYyU=; b=ZF+i+Y2gAUDvnPKbdtvaluB2Tq
	0KAkdhcJ/00zbaUS9c9wrPyCu2CxG1nN07EjSs7T+1WJCbVbHkXgnZCUUiiWexQjnOM6S2Ydqnndw
	k1zyO5Ti9M5qIWlE3KHedXkPGcRPIoBB2nOEOPrr2ZUP+p3mQl7FUZcTvSyQcm1hFujU=;
Received: from localhost ([127.0.0.1] helo=grosjo.net)
	by grosjo.net with esmtp (Exim 4.92.1)
	(envelope-from <jom@grosjo.net>)
	id 1hwRBq-0003TX-Vh
	for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 13:13:47 +0000
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="=_0c9ca03ef7b385c4cdd91903911e4046"
Date: Sat, 10 Aug 2019 21:13:46 +0800
From: Joan Moreau <jom@grosjo.net>
To: openwrt-devel@lists.openwrt.org
Subject: Has OpenWrt suport for Powerline devices
User-Agent: Roundcube Webmail/1.4-git
Message-ID: <d75edc05434b3c25a1629b579da2e58b@grosjo.net>
X-Sender: jom@grosjo.net
X-GJ: Sent from localhost
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "gjserver",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 admin@grosjo.net for details.
 
 Content preview:  like TPLink AV2000 or other (with or without Wifi) ? like
   TPLink AV2000 or other (with or without Wifi) ? 
 
 Content analysis details:   (-2.9 points, 3.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-GJ-SMTP: h_FROM = Joan Moreau <jom@grosjo.net> RPATH=jom@grosjo.net SENDERADR= jom@grosjo.net:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_061352_757279_8491B752 
X-CRM114-Status: UNSURE (  -3.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [94.130.37.163 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

--=_0c9ca03ef7b385c4cdd91903911e4046
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8;
 format=flowed

like TPLink AV2000 or other (with or without Wifi) ?
--=_0c9ca03ef7b385c4cdd91903911e4046
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 9pt; font-family: Verdana,Gene=
va,sans-serif'>
<p>like TPLink AV2000 or other (with or without Wifi) ?</p>

</body></html>

--=_0c9ca03ef7b385c4cdd91903911e4046--


--===============6446906005810380539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6446906005810380539==--

