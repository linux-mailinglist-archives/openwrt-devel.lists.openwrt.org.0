Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 575C51DCA73
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 11:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RoLxKpoRPxNLNzXG0ehEic9NlxSxzBeg8obnhL25Hk4=; b=sUdiDlROFe4un3LeZ+pdxlsUQ
	QQj8RDzV3YnpdBUExx1vbzEigYGEgBUgKHNpjZbedHmVkWUkSpwiE/1Og1oZtAyZDUwS+g1IkyH1S
	OWZ7qeSYN1peMYrZBBi7zsZ5fE+VhMM5gqHL1j4kOZmoQJAhGZAZhZePA9hdL7+j2WRybTL7nNwrh
	rK8ofTAThiEldpZ8ocY789UCyFDdM0VR0PUc7TtYv+ErTqewY36E9Qs3UIE2ZdIBkaXeOHK/rdSfX
	79y80+vHUtXn8Iz9uo9wa7Pg4hMbpR7FJ9WP4AgnF8kEjSANkH2OZrNQB/sC/nDHTL434HhzkXvpF
	rROeCoplw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhoR-0001cU-3x; Thu, 21 May 2020 09:48:27 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbhoK-0001c9-95
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 09:48:21 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id A47DEFCCB8; Thu, 21 May 2020 11:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590054482;
 bh=TejXST92S1J3unT1P2TPLCx8xFdeM2ahTYmAsYmITJI=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=gD0KA0RogmrBg4sJ8JiCAK8QyW9rOObSStaQR/wW6QH09uX1+LEeB/b2GSIoVWFEL
 J1O3q6i/zvzuLJMWC309wXtDJBSFiEExOEVoOUZVYtmAyDie2jemLtScPCaAqP0ePa
 ePaDdQaZm5zDgJwipz39lXnBe2W3UzkazGgVBSs4=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from [10.0.0.5] (213.219.166.32.adsl.dyn.edpnet.net [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id 2BEB1FCCB6;
 Thu, 21 May 2020 11:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590054481;
 bh=TejXST92S1J3unT1P2TPLCx8xFdeM2ahTYmAsYmITJI=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=RGM1PjSXvJzUlKAZ4m4G5wksYDb4fR6d3pW9UgB5OJ2K/NPjPel3y572I0elHXw17
 W5jPfb9zPFCQzkxbDDXig/XFMYUmq4AJYOm953dtrefG4e4JhJpnjainEoXNM/Tq4I
 BX3jEFZBMUKWLYOosJbGmXwVYQXl4Dobfez7LLhA=
Date: Thu, 21 May 2020 11:47:54 +0200
From: Stijn Segers <foss@volatilesystems.org>
To: Jeonghum Joh <oosaprogrammer@gmail.com>
Message-Id: <UVDOAQ.H8PR2GO83PN3@volatilesystems.org>
In-Reply-To: <CALYKT1imEyMPRn_LpkkdPCxDjA-YT5k1Mohuk2bRcGj5Gt_bbw@mail.gmail.com>
References: <CALYKT1imEyMPRn_LpkkdPCxDjA-YT5k1Mohuk2bRcGj5Gt_bbw@mail.gmail.com>
X-Mailer: geary/3.36.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_024820_462738_71417E16 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Where can I find the kernel menuconfig from
 openwrt target board?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Jeonghum,

Op donderdag 21 mei 2020 om 17u45 schreef Jeonghum Joh 
<oosaprogrammer@gmail.com>:
> Hello list,
> 
> I've seen that one can find kernel menuconfig from the target board. 
> And I remember I saw in my eye from my board.
> But I forgot where was it.
> 
> If you know please remind me. Let me know.


You can find the info in the wiki: 
https://openwrt.org/docs/guide-developer/build-system/use-buildsystem#kernel_configuration_optional

Cheers

Stijn

> 
> Thank you very much in advance!
> Jeonghum



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
