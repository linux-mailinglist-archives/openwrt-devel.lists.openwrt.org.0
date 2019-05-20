Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA012399E
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 May 2019 16:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x4v/ZtnL13UZYeNnUo/z/03mvCLfRNyCGwilQ8YplRM=; b=q/6WtX+5uVSRh8mpfvEwP6Z9L
	TCP0K7wws9+VjdliCgwfxDD32I71IrLWT2kEot0RTtV69algSnphakrXN0vEhn2WIes5HUpSThGNg
	3+bW7ulaiFt2GQq4+5EEWN6ysBG9q0svCtWpD6yhcqhqDg4IdjrphRoc9JNP6cqMvv18FPbU1VXWG
	rmrIP7Yy/fL12to9djZfpPV1B0lupVDRLXtWPSarc73q9XvuZW/LrcXvbT2LodtzSjXev7AMb9yOU
	WoTVYYm9aF/70GbacOMLaKYp/I/oHSY4AWNA0h7KJayMy4rYhLKJCSy9eujf6li5fGXYrhYtZ6Vo+
	H8RbpvcMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSj44-0000F7-W3; Mon, 20 May 2019 14:14:57 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSj3x-0000Ej-RM
 for openwrt-devel@lists.openwrt.org; Mon, 20 May 2019 14:14:51 +0000
Received: from ubuntu.pn.wagsky.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id F0A5A3B6CE
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 May 2019 07:14:17 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <20190520101443.9192-1-bjorn@mork.no>
 <26fb4086-42b5-a102-0bc7-cf17972c2823@allycomm.com>
From: Jeff <jeff@wagsky.com>
Message-ID: <bd74a299-499b-3746-b47c-1d05e0401740@wagsky.com>
Date: Mon, 20 May 2019 07:14:18 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <26fb4086-42b5-a102-0bc7-cf17972c2823@allycomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_071449_889862_F562620D 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH] upgrade: nand: fix board_name assumtions
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2780456593176366812=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============2780456593176366812==
Content-Type: multipart/alternative;
 boundary="------------E430CD395F91D756B6659B37"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------E430CD395F91D756B6659B37
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/20/19 6:42 AM, Jeff Kletsky wrote:

> cc-ing primary Imgtec / pistachio / Creator Ci40 contributors identified

Note that all five imgtec.com email addresses found in the commit log bounce.

The pistachio and the Ci40 do not seem to appear on the imgtec.com site,
nor do related downloads at https://www.imgtec.com/downloads/

Jeff


--------------E430CD395F91D756B6659B37
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>
</pre>
    <div class="moz-cite-prefix">
      <pre>On 5/20/19 6:42 AM, Jeff Kletsky wrote:</pre>
    </div>
    <blockquote type="cite"
      cite="mid:26fb4086-42b5-a102-0bc7-cf17972c2823@allycomm.com">
      <pre>cc-ing primary Imgtec / pistachio / Creator Ci40 contributors identified
</pre>
    </blockquote>
    <pre>Note that all five imgtec.com email addresses found in the commit log bounce.

The pistachio and the Ci40 do not seem to appear on the imgtec.com site,
nor do related downloads at <a class="moz-txt-link-freetext" href="https://www.imgtec.com/downloads/">https://www.imgtec.com/downloads/</a>

Jeff
</pre>
  </body>
</html>

--------------E430CD395F91D756B6659B37--


--===============2780456593176366812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2780456593176366812==--

