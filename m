Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1801F08D5
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 22:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:Date:References:To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xnmzSyNgbnblrQkgQmFR5YqfZywFUJOi+ciCiOYuPxk=; b=SH7jdq+/7kaFIj2+JmfZ7a8AR
	c24vGdM3qRmxmgsx1wXMMMg90zQSKTn+dICSjCkY2G19rpPZz9hOZooTAxLYmQ2Bb8WOPwx7oZjPE
	uVtnsEEC8/91oy7JWL29AUJuU01gpg7GnycfLcvXQehdHKC6M8ABN7afHRh1kDG47Du9tZKgZhCrK
	PPO18vZpRd5cosvwR9o5+KA5FiJPtmW9tnD4AaYxZvhxwdQ55uMUVt6hX+5mlOu/TBen03Pxhb4Br
	ryRAukqPHxyMNQyqGWym8Yyt9KUByRY6tZrD1fp8Ryq9PpAkjs9swpMh1hz4IDt08UTSsEK3GT0wR
	wDJ6NmPyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhfsC-0001PW-9W; Sat, 06 Jun 2020 20:57:00 +0000
To: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
References: <bc270db4-005d-36b9-c726-c044ef719624.ref@yahoo.com>
 <mailman.2840.1586705844.2542.openwrt-devel@lists.openwrt.org>
 <20200603094351.GB36571@meh.true.cz>
 <mailman.20388.1591275346.2542.openwrt-devel@lists.openwrt.org>
 <20200606045751.GC32043@meh.true.cz>
 <mailman.21076.1591447467.2542.openwrt-devel@lists.openwrt.org>
 <9BC696B1-EBE9-4ECE-AF20-27132BD38D0D@darbyshire-bryant.me.uk>
Date: Sat, 6 Jun 2020 22:56:44 +0200
In-Reply-To: <9BC696B1-EBE9-4ECE-AF20-27132BD38D0D@darbyshire-bryant.me.uk>
MIME-Version: 1.0
Message-ID: <mailman.21111.1591477016.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "R. Diez via openwrt-devel" <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "R. Diez" <rdiezmail-openwrt@yahoo.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] Do not hard-code IS_TTY in script
 scripts/feeds
Content-Type: multipart/mixed; boundary="===============7526127590048160230=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7526127590048160230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7526127590048160230==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic309-25.consmr.mail.ir2.yahoo.com ([77.238.179.83])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhfs5-0001P1-UL
	for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 20:56:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1591477010; bh=r0hsnPfECXt4oGO1zghK8FJ/Cysenccdv9R9AN3zwms=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=i1UdzqEUblD8uzvPqcJR6tDsfJR8IMjhyafmv0rGfHYHJvtu6NUeJFzRpJJCJfZBPYT5xeN0jPGlCu+oM2/WniI/z0nSCz61hz+9rrscvmj0ApSCBg4QvJ9XBQXjK8++aNI0wiplm6GiV9LyuTH62lJSsGj8jhwQQO7PhWWHEsya5mTeOFmeBLp2xFAXl2Ezxh0dwPZHkQVWe9EZgbi6xzu7rZCsfHbLO4WyMXwPFMJDwHwBKavvgUkceCIyDwcZ8wf7JVkE8G66r437GBb/8E1o8K2+S9WdZQgfHLYUqpWA2tY8rUMmpZM75WWgYljwukpuE095umg9b7t1wBrJAA==
X-YMail-OSG: l2QlamYVM1mUvI3H.lE7ttqXdAG_cnzUd0mlhmXjoXZFiEwjyC4con2FNuwhZWU
 NN9giCIojCv3KpnYYLQ_fwnW3FpHuVs3IAAkKJPcvoBdhwZnfQA0VtF.KOgWS9MTZOVItRYWWKxp
 hE6Zox99uWgGPxwUKiWH_j7XIBjLyiAqvw33bQL988aSJQraj0Sxt7bZHVS.E9p5Tj9WnpCsbRcC
 VvPN5N6DsReoCAjlllTNAu.yJ.NFcIyJ8W8wde_aBXvwGT6a4u49JuHACJf9p1NgzUIHL3ZUI6OE
 1JYZ6d5F0m..xq1f.fVBm6SRywQzVyRJXYGYSkGZXdhvzr16yl2lzOLtCZ.hed4xQqgGo8fgaSwl
 mH559MXPksfkB51n7bjWVgwq8eu9Ge4Y16sK611j5Z_hk7M4_L4HpNOykJnpnubNkI4Rave41NBg
 yCRm0ecxcumnZuppnI7TWkgk21O5.kGBmHH70WR6WXfAJ2i3t_baehjn6yb_8WUfP3t.mUVQj5YQ
 ACL92IbE852.dQ1GdIcHTFrDMoMHd9rAliB0UYmSK6JNhsnm.2a.qI0TdoVxz0pmuMgu..IPYxBX
 hUu9_Ju.5PmtZlGHvCANcyy0mHGfyt6cMqWKQt1syV2RXmltYC0tkniIAxDZ1UJJ8qvbTBLSRSUb
 pI.1h_jjoMC65UhqDThks1hIqwbIDUJrelHx_Mp8CBAKDwOcMAdXxAtgYu7VVhlOVFpkqjQqsVvC
 BGbzsoVI7HDxRqROoml_i3e5R5CuyX6CPdjOMHT9ZcOQ0tc75JCdOoDACclltMkaCxPS3FpgVY0l
 OnsFvQnXCAODxgIcGcpbY6WLeeUJ52Cg3DTx9hlEbROIYF1ShzHuAukpDFHQ9fOE4B6_i0kiCgTk
 PeIkLkdWQwSQvEpjfyTEKzFN.o19qwE2F24aGkl8nCquK7G2KbgKBNXZqvxDlcAOEHrIv3sQoU__
 nZY_BOl32.gWNdq_Sszv3P6YB4nt6DNg6O.MviTJU2aEAZkeA7VqM5J62IXU7F7S0RUGGYHZjlUj
 UpOW.TG9tasB68X1.2Gf8NXb7Eg9.WiT16G35xT1hDeKfCvv2iUnOyC5a7jK9Ncp0YRK5pBi4d70
 b7zjiuTf4Lowz0t3dGpRUFU6sasHPnKI9Xvx.AAcTu_zZtQI9VEjuW3DBsHu6TkzdSGLqa5X__r1
 kbm.G6O.s0cqdub6lGWTfN556_d2DjIVWWkXSUPvWfU0w82AQHoZuXVfbwiEkCZHmYK9ji.1iBMl
 sBlKN3wEGhhY_NWYD5Kld60F2QrXPIDahN6xkdtJy5YzZR8Dz5AvzsYRDHSYfHx.V48j0dfgvYBe
 ta7EUgn1JkZRx8DgPoQ5uBoiQVttDP59fWgOAd8g0G7ONZ2AGsc6zOlI20H4qezh587_Ec4YirAj
 NCAg4yJW.69qOX6SO3M8Nth.bvUwVSIYzyVF1uPjEXCr45OA-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.ir2.yahoo.com with HTTP; Sat, 6 Jun 2020 20:56:50 +0000
Received: by smtp412.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 7e966f44752dc1be21e791992a0b22f9;
          Sat, 06 Jun 2020 20:56:46 +0000 (UTC)
Subject: Re: [OpenWrt-Devel] [PATCH] Do not hard-code IS_TTY in script
 scripts/feeds
To: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <bc270db4-005d-36b9-c726-c044ef719624.ref@yahoo.com>
 <mailman.2840.1586705844.2542.openwrt-devel@lists.openwrt.org>
 <20200603094351.GB36571@meh.true.cz>
 <mailman.20388.1591275346.2542.openwrt-devel@lists.openwrt.org>
 <20200606045751.GC32043@meh.true.cz>
 <mailman.21076.1591447467.2542.openwrt-devel@lists.openwrt.org>
 <9BC696B1-EBE9-4ECE-AF20-27132BD38D0D@darbyshire-bryant.me.uk>
From: "R. Diez" <rdiezmail-openwrt@yahoo.com>
Message-ID: <4ec0439d-6b84-aa77-3644-332cded6af4a@yahoo.com>
Date: Sat, 6 Jun 2020 22:56:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <9BC696B1-EBE9-4ECE-AF20-27132BD38D0D@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Mailer: WebService/1.1.16072 hermes_yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.6)
Content-Length: 1308
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_135654_114558_67418697 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [77.238.179.83 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ruben10post[at]yahoo.de]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [77.238.179.83 listed in wl.mailspike.net]
  0.1 URIBL_SBL_A            Contains URL's A record listed in the Spamhaus SBL
                             blocklist
                             [URIs: openocd.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different


> I recognise the frustration!  When I first started trying to send patches
> I had similar issues (white space wrapping/reflow etc)
 > [...]

I am just trying to get an obvious, trivial issue fixed. I can fix it in 2 seconds on my PC. It is very frustrating. As a voluntary contributor, it 
takes the fun out of it. I am guessing that you and I are not the only ones that got frustrated at the beginning. It is probably hindering other 
contributions as well. It is probably the reason why so many little things stay unfixed for years even though many people must notice them every day.

Other projects take such small patches without a blink. Maybe not directly applying the patch, but just fixing the issue themselves straight away.

I have only seen one other open-source project so frustrating: OpenOCD. You also have to follow a long procedure to set your system up in order to 
contribute patches:

http://openocd.org/doc/doxygen/html/patchguide.html

But then it is almost worth it. Gerrit tells you whether your patch compiles, and even whether it conflicts with another patch (and which one). You 
get notifications and reviews, and you can comment directly there.

But thanks for your hint about "git send-email". I'll see if I can put together enough motivation to try again.

Regards,
   rdiez


--===============7526127590048160230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7526127590048160230==--
