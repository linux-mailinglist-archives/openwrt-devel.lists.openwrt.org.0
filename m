Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EE081626
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 11:58:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xCFDngJrFtwyBD+Fgv08JbVstWCfN1sCBKlqgNe0QQA=; b=SDr
	zK3UtzrIhMP3jiGZiFY/C1eWfbjKHdaMIHo/rfl0ZMc8S7OOvlGB1H90fV8IcrdbDGErxZZexNUHA
	5+zd/9nGx55AOBgJmWTOZ0cm9qLglxiW9uv3PGKGzlkWYpU+CS5TDTZCRi8eg/USfiD+3QB9e6AFh
	a/a8pfVZ+4vz7aoihtzk7akMT0BbWymtosZRYhm93LhfyM0owoiwlswhjM0+xJxeaGiq1Sha1mrOv
	hlu4bBh6SHzFsWKhvInOvR6m7uXfyyRrCjFrr6JCGEDxJXgRBf3kdDkCog6qmRupWrEVu4qpQSN5k
	kDeMush6rBrqUzZU5UcNDsfhtuT3N9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZl5-0003gJ-UO; Mon, 05 Aug 2019 09:58:28 +0000
Date: Mon, 05 Aug 2019 17:57:31 +0800
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.14528.1564999059.19300.openwrt-devel@lists.openwrt.org>
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
Subject: [OpenWrt-Devel] Advertising my own PR :)
Content-Type: multipart/mixed; boundary="===============0380658898360419652=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0380658898360419652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0380658898360419652==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from grosjo.net ([94.130.37.163])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1huZkG-000347-Ik
	for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 09:57:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=grosjo.net;
	 s=dkim; h=Message-ID:Subject:To:From:Date:Content-Type:MIME-Version:Sender:
	Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=vcdJOSZAf8anOR82wB2o+Bo8CcAvKgqCcwvv1MU9/E8=; b=XrA63sVW5EKuyn3+z3q7PjbU4B
	4G7/n+XSJZWtNMeg2F68rXNprVddSws7Jfbgf24NZ7AOege2Cz0VnRZgDw+XjkOMuUNNSqKr5UURh
	+AwNJEnPIhz4VNc659ZdMHtt2HaytupLL0xjD8gE0tHcVERJHPRJ/LISP98g6SucgT34=;
Received: from localhost ([127.0.0.1] helo=grosjo.net)
	by grosjo.net with esmtp (Exim 4.92.1)
	(envelope-from <jom@grosjo.net>)
	id 1huZkB-0005ND-Ht
	for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 09:57:32 +0000
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="=_9750f5d0d1f15331b866fb940608cf9b"
Date: Mon, 05 Aug 2019 17:57:31 +0800
From: Joan Moreau <jom@grosjo.net>
To: openwrt-devel@lists.openwrt.org
Subject: Advertising my own PR :)
User-Agent: Roundcube Webmail/1.4-git
Message-ID: <f130124b966c8393373424b559c95d51@grosjo.net>
X-Sender: jom@grosjo.net
X-GJ: Sent from localhost
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "gjserver",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 admin@grosjo.net for details.
 
 Content preview:  Hello all I made a PR more than 4 months ago for a wide spread
    router called Comfast E312Nv2, the generated firmware is very stable, but
    the PR looks forgotten in the limbo. So I am advertising it :) 
 
 Content analysis details:   (-2.9 points, 3.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-GJ-SMTP: h_FROM = Joan Moreau <jom@grosjo.net> RPATH=jom@grosjo.net SENDERADR= jom@grosjo.net:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_025736_836480_4A40980D 
X-CRM114-Status: UNSURE (  -1.27  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

--=_9750f5d0d1f15331b866fb940608cf9b
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8;
 format=flowed

Hello all 

I made a PR more than 4 months ago for a wide spread router called
Comfast E312Nv2, the generated firmware is very stable, but the PR looks
forgotten in the limbo. 

So I am advertising it :) 

If an admin would be so kind to review it and hopefully pust it to
master, I will be more than happy :D 

Here is my amazing PR ;) : 

https://github.com/openwrt/openwrt/pull/1955 

Thank you so much
--=_9750f5d0d1f15331b866fb940608cf9b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 9pt; font-family: Verdana,Gene=
va,sans-serif'>
<p>Hello all</p>
<p>I made a PR more than 4 months ago for a wide spread router called Comfa=
st E312Nv2, the generated firmware is very stable, but the PR looks forgott=
en in the limbo.</p>
<p><br /></p>
<p>So I am advertising it :)</p>
<p><br /></p>
<p>If an admin would be so kind to review it and hopefully pust it to maste=
r, I will be more than happy :D</p>
<p>Here is my amazing PR ;) :</p>
<p><a href=3D"https://github.com/openwrt/openwrt/pull/1955">https://github=
=2Ecom/openwrt/openwrt/pull/1955</a></p>
<p><br /></p>
<p>Thank you so much</p>

</body></html>

--=_9750f5d0d1f15331b866fb940608cf9b--


--===============0380658898360419652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0380658898360419652==--

