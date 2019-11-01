Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 919D0EC1C2
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 12:27:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pKCTM3IOpvdeSWUn96MlhL4Dim5ReHLWW47raC6o11w=; b=udHVmx0UpFT/te
	eK23nt1lI9OelBfCdQWSv+ovqrM3VCd2K9ZaHkwZeuV7I9V7sz+PgKH1prFpryO4qtccIUQm97uU5
	gBdf+aoMupO8tTY8x9XXIrJTYuacu3T7tMGkb+Rt1u15wwFosZ9/18VfGRGrFpVEeVwdCygiUr5EO
	z1QKvNnEaHeN5/4lY81tNSRj0Gu5qhRXHN4qPx8eykcjst1kwDQR1twHYnbnHt5KLPcR5RMSYI6O9
	/uinQgW5rRXI8JGkQogZ5QGAOqG9oVZ5vjwGPkfVqKwqwmaxTZpZ2c/1ZqCmUvg/21gwWfDMQ727B
	cD1zUNeEbUeG0+nfIVhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQV5V-0005L2-BE; Fri, 01 Nov 2019 11:27:29 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQV5M-0005KG-GP
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 11:27:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To:From;
 bh=DF6IyLDwyI6lFxn52sbqWO6qoil6xZ2aRHpDmd8EdOM=; 
 b=eglQwM1lxOllDOViOkkUaYTz571/esE9gWX1HcxpmZadJRE8h0UbrggoGwat8DLdNIgTqdTmkI5kgE/UePAlxdPZWwK4xDMxBXf3KQqndBHj4pUpXofTv1TZ1SBL9Cb+6N9wrvko+xqdxAscALutU/BrCeTorKR+GJoe3/aIyLk=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 12:27:12 +0100
Message-Id: <20191101112713.10059-1-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:71d7:4afe:539a:4a2e
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1iQV4i-0003vm-5X
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:71d7:4afe:539a:4a2e]
 (helo=localhost.localdomain)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1iQV4i-0003vm-5X; Fri, 01 Nov 2019 12:26:40 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_042720_834861_D76AAC4D 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 0/1] ipq40xx: Add new device Compex WPJ419
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
Cc: mail@adrianschmutzler.de, robimarko@gmail.com,
 Daniel Danzberger <daniel@dd-wrt.com>, lede@allycomm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Changes since the last PR:
- previous 2 patches have been dropped.
- spi-nand flash driver is used instead of the old mt29f.
- reboot hang problem is fixed by using the 'broken-flash-reset' dts property.
- u-boot-env partition is no longer read-only.
- bootargs are appended in the dts file and no longer need to be set in the bootloader.
- style and naming issues have been resovled.
- drop msm bus header and dts file.
- fix sysupgrade, add nand flash handler for wpj419
- Use only 64MB of the nand flash, because the bootloader expects the
  ubi part to be only 64MB. This is due to the old mt29f driver, whcih
  detected the flash with only 64MB instread of 128MB.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
