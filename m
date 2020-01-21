Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA751143B88
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 12:01:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LMwxFQJDnEOM+GeWQgzjQpKNBTaT/Ul4Vqnlf6ofnoI=; b=gYr
	IWnMILsYX0irFbf/98lRI/uaygAzfMZs83loqHjwTPgmk3uNu5yHD61llT5Ash38OqFZ6L2NeiFNF
	YlOhv25nRlcwmUy/hzUgbyPfU3CqYF69l5xJ/eWm3WXvj4s9f8wxZqFHtHuAJJk9KusHSyJ5D2zaW
	j62Cg8UQwsOhl2XancEFK1c+Q1XOp4EuISGCyujnVntsjIXx2xRc1yps2KqjRG90EgJVo5jnrrPT4
	VuwmOLinNXlsXu2vVtb0kqnT8G9B0Fu2Ey9IbLmGdOkX23HQ7N+L2qVxAN7zqbHCy8eeB197PwydL
	G1khHX8K8CgP6qbFPDJnNdWwb2K73CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itrHn-0004BU-Q3; Tue, 21 Jan 2020 11:01:31 +0000
Date: Tue, 21 Jan 2020 12:01:08 +0100
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.26219.1579604485.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Christoph Krapp via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Christoph Krapp <achterin@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] [19.07] ramips: add factory image for
 Netgear R6350
Content-Type: multipart/mixed; boundary="===============8047652277952334287=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8047652277952334287==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8047652277952334287==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itrHd-0004B0-6u
	for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 11:01:25 +0000
Received: by mail-ot1-x331.google.com with SMTP id p8so2508321oth.10
        for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 03:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=T/8B5VZn/YUOKk0aogWeDOVbYOsw92Fjfarwvt66JoA=;
        b=ubZ1SYoCKgtA5dW/YB3ZJVqElniMwZG1sxTULttk0ljS82L8LcGNyRmXV4sQvO0x3d
         w+W+MN483GEcj6sbfRXsI7btKC5r/Rb8vzOBtkPUyvJNFMIUNFYJsfsiTqIxGyx3fIkt
         EnCWHD53NfWUDdBLoFB/4lk4FpXFbSfsRonT53U6XQ2W4+TOaKDmwH7/A4FHM5HdgXtt
         WRAwIr0mElcj07/mujZUWxVpU4NMue2Z2PrcShFbQY79QeLCwYxCOTWek6N99EsLymgT
         0QxPIZwWbqixZiPojZMBTQwubV2rLle5gnR9uN2ZZC0//ixNRikQ+ep1vcqutEI2G+uE
         ZbXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=T/8B5VZn/YUOKk0aogWeDOVbYOsw92Fjfarwvt66JoA=;
        b=RsLcD5WOKxUujHOSjvzNGWS91eatel5+oIlj+ns+GF1Sq8cxUw2tq1IVXG3IMIvLRU
         riGB3kMg4MU0gJGwGSrTBo2mnTvT6M19KEiHaThV0vMvgF6jIPSDY3qqUPuVvMUcuybc
         Fy0AiXJ6rYRUI0+B+4pwALvG8WsspsX5sodvqlrhoxaQBPdqt/St2VePrKu0zmQxYW95
         zCXFsAEm8Mv+XD8hC2KWEX0ITJWXHoYjoGMNbw3529Lr5d91dyFc1nTh03bbVrTpkpD8
         D6DIkgUdNUxEgUYTbsfEmixFFl095/kkpbIpDHrL3Ul1+sqgDNQWY0iXG3/X4I5U3UCP
         eLTA==
X-Gm-Message-State: APjAAAXPGh8nk2s6peeMm7himyvQELEpmfgenA5xqtSa53g77KA6b7OE
	QJn3tg1opxIw3niDxqhX1FUbBhtuV/9/HhmWTvUMF4YfPNE=
X-Google-Smtp-Source: APXvYqyJRSmVIpG66W5Fq0v4E1ZpOT5xIE8ajg6RK9Xv4+9MMp6yM3cUMfB1WppJ79tw1GGCipw80ibrSZ/f4OhiQqE=
X-Received: by 2002:a9d:73ca:: with SMTP id m10mr3204235otk.312.1579604479708;
 Tue, 21 Jan 2020 03:01:19 -0800 (PST)
MIME-Version: 1.0
From: Christoph Krapp <achterin@googlemail.com>
Date: Tue, 21 Jan 2020 12:01:08 +0100
Message-ID: <CAEQ_PowiTv6nom=ZMSGhDSYwejx=TgJPEVBa5jrOXtrtxi4YaA@mail.gmail.com>
Subject: [OpenWrt-Devel] [PATCH] [19.07] ramips: add factory image for Netgear R6350
To: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_030121_274063_58F484D9 
X-CRM114-Status: UNSURE (   4.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:331 listed in]
                             [list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [achterin[at]googlemail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

As support for the mt7615e wifi module was backported to 19.07 it
would be nice to have factory image generation in 19.07 as well.
Can someone please apply the following patch to openwrt-19.07:
https://github.com/openwrt/openwrt/commit/3c8df280a96bbd81357d6eb52845e6b5fa7162fe

Thanks in advance
Christoph


--===============8047652277952334287==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8047652277952334287==--
