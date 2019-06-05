Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD6236327
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 20:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sx9BXaBkdIVb01npPwLvo50NJ0L5R5Wu7sNk94q7QTY=; b=gQr5CXByXuAVS+
	tBr8PG2nI4+ZuHL4xjZvBytTBchyTxWs7wdRhliJVgvRenGqCFV312bTTmeQ1GCoheYyyTd+eO3Bn
	6M117k6ebRESZw4HcoZrNIRq8ukH+FSylE2q9mn2ePUYlNP4fmKyl6CEwJlQaJ/O9nA6Y3rwrK489
	Bth5yX3OibJzgJD8av2q06kx4GI5/bb+RLY16D+1q3mn41X1wa1ERo5mI3bBCvnT4m64+7D2+rCW8
	EAEw7DyeCFzIr+PiDSXDeTJngDDpedaiyGx1Psz3Ti2EpT7adr98InG7x5vRGSPrHKc0LuJRdFon9
	Yy/FCEbvgtDePhnSqcfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYaOF-0004Zb-4U; Wed, 05 Jun 2019 18:11:59 +0000
Received: from smtp-out-so.shaw.ca ([64.59.136.138])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYaO8-0004ZK-OW
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 18:11:54 +0000
Received: from [192.168.120.184] ([50.66.120.98]) by shaw.ca with ESMTPA
 id YaO4hueNqo7SQYaO5hYy8r; Wed, 05 Jun 2019 12:11:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shaw.ca;
 s=s20180605; t=1559758309;
 bh=LzT8TQTEsba2hKANvVKf0q2jjq2QE0kQd6G4dugmRVQ=;
 h=To:From:Subject:Date;
 b=BKchjmVIqyrICLoNVVSkHs0c6VI5DwwYh3/0z1FP1nDY8dQ/bCCT3WipFwiklHXfK
 Y7hdGe08fUuUqeMUX2Pv14O7KmB0Wd3CTLFh4J4KyKt+uJOUmv8BlhybiWPm7fVWA+
 r1+8n7FZ8j8H2wuenZUnxQwLp7hHp3ZLQwxOzNGt5D0zsoouLgrTkme+0FX0qZqSWW
 u+5bnFOsHje2iwtCKj8xA/4JsxflgYa4+Ry1eE+1659/N2gBrPt5djgPR2HFcAeqzZ
 0c6Zs6aO0eFzm+OuaPxguMi/Ggx+ASccEsJw8Fj/6yceK2Gz+hPsQENs0d7ILRfJaq
 wZ1D5XijHd50w==
X-Authority-Analysis: v=2.3 cv=Go88BX9C c=1 sm=1 tr=0
 a=4SlPzEPiCsAYSucSKTWi/A==:117 a=4SlPzEPiCsAYSucSKTWi/A==:17
 a=IkcTkHD0fZMA:10 a=jdP34snFAAAA:8 a=qmGRYhQX3mj9WTIYFsQA:9 a=QEXdDO2ut3YA:10
 a=jlphF6vWLdwq7oh3TaWq:22
To: openwrt-devel@lists.openwrt.org
From: Kabuli Chana <anome@shaw.ca>
Message-ID: <64c3f723-428e-df41-1186-d03477959544@shaw.ca>
Date: Wed, 5 Jun 2019 12:11:48 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CMAE-Envelope: MS4wfCcBpksLmUFuyK2uzuoN77BIm2PW2CyCbwdo0KTtLQj08oNTRgagZJarTnYWKcse78utOz9OYRgYwuIWaEgAHEArzSyI2SuSVh87BXQfY3HENRX/UiTL
 0B7NOXhIV0d3TZnkuYzESDtu6eDoggcKwe8seNFrq3iJkQFM8qYLyshCn7swmzWKAsMztZuEFnflFg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_111152_886742_95EE104D 
X-CRM114-Status: UNSURE (   3.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.59.136.138 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] lua bug introduction
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Something has started zeroing out /etc/rc.local contents, maybe:

https://git.openwrt.org/?p=project/luci.git;a=commit;h=1c09ee5e42550d6339bffa58d4cba3461948e19c


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
