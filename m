Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 593928E504
	for <lists+openwrt-devel@lfdr.de>; Thu, 15 Aug 2019 08:50:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jNBmnQ5VIY8FsgafHzrVwKkhcQUe7vqSGPcKv4txhMI=; b=Atl
	O57VaGnVPfF0jkGVAOUeBkytIpnlTN5eq7/e1q9E0ILSm1KRME7R0/wTxXxEhPDnHHBj25JLF9oxF
	41146L+aNfaeveyTAdR2V8+r2sGnqCGUuCqdv9KHoO2ea0p3gbFlgt+GMo+5y82Chs3I+0J0OozWw
	LRuHhDgF/gTMz4Stt07GVoXqSWRC8r7vz7bbuc7h1XYEsLxCrrPq//7AjJQy/2U9++P4AZfXOc14D
	F80DdPI3bnJskm/DWJdbHeJxs8eu38v6rYAnDCWaDZx7O16OLLBJqrdvSkR/BTeezI+J//zCukJGw
	JYFtjXPaH97Rzb2X83SbdU3Sz9/qXAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy9a1-0003Ix-6e; Thu, 15 Aug 2019 06:49:49 +0000
Date: Thu, 15 Aug 2019 14:49:29 +0800
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.17146.1565851779.19300.openwrt-devel@lists.openwrt.org>
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
Subject: [OpenWrt-Devel] Killing leds
Content-Type: multipart/mixed; boundary="===============4486107190831033595=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4486107190831033595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4486107190831033595==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from grosjo.net ([94.130.37.163])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1hy9Zo-0003Ie-O8
	for openwrt-devel@lists.openwrt.org; Thu, 15 Aug 2019 06:49:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=grosjo.net;
	 s=dkim; h=Message-ID:Subject:To:From:Date:Content-Type:MIME-Version:Sender:
	Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=/13NkoonlkXGpdWxVkpbCX86ECCXgqwtp1dB4nAYdK0=; b=JP6d7edTM8Cai7wPDbFzVudJCR
	emRqLj/fSi0sKkD8350wMX/r5eQdL6FWSX7YkIRn0dDfprGlbyT5QoyrOZEZMzu135bVmk6earMPd
	Z/oFQN7WVxMIDNS9VMUuW4SlA5U2oYMntjhfoo5M9wludb9SXq3/oXq0zpaODiuLFUyo=;
Received: from localhost ([127.0.0.1] helo=grosjo.net)
	by grosjo.net with esmtp (Exim 4.92.1)
	(envelope-from <jom@grosjo.net>)
	id 1hy9Zh-000387-NC
	for openwrt-devel@lists.openwrt.org; Thu, 15 Aug 2019 06:49:30 +0000
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="=_d9405d0de2ece9b28eafee4b2909faed"
Date: Thu, 15 Aug 2019 14:49:29 +0800
From: Joan Moreau <jom@grosjo.net>
To: openwrt-devel@lists.openwrt.org
Subject: Killing leds
User-Agent: Roundcube Webmail/1.4-git
Message-ID: <5b27e7c5f2958851032f2ff5b720f486@grosjo.net>
X-Sender: jom@grosjo.net
X-GJ: Sent from localhost
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "gjserver",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 admin@grosjo.net for details.
 
 Content preview:  Hi How to add an option in the makeconfig menu, where one
   can select to activate/deactivate all togehter the leds support in the compilation
    ? Thank you 
 
 Content analysis details:   (-2.9 points, 3.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-GJ-SMTP: h_FROM = Joan Moreau <jom@grosjo.net> RPATH=jom@grosjo.net SENDERADR= jom@grosjo.net:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_234937_098910_1E4B00AD 
X-CRM114-Status: UNSURE (  -2.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [94.130.37.163 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

--=_d9405d0de2ece9b28eafee4b2909faed
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8;
 format=flowed

Hi 

How to add an option in the makeconfig menu, where one can select to
activate/deactivate all togehter the leds support in the compilation ? 

Thank you
--=_d9405d0de2ece9b28eafee4b2909faed
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 9pt; font-family: Verdana,Gene=
va,sans-serif'>
<p>Hi</p>
<p>How to add an option in the makeconfig menu, where one can select to act=
ivate/deactivate all togehter the leds support in the compilation ?</p>
<p>Thank you</p>
<p><br /></p>

</body></html>

--=_d9405d0de2ece9b28eafee4b2909faed--


--===============4486107190831033595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4486107190831033595==--

