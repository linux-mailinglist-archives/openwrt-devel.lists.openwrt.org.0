Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E25149A8B
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Jan 2020 13:29:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rSvN4DBzk4TPk/iKer7/W/9EJOls1xpET5cT0Qakd1U=; b=is1O4D7ol1g+cL
	b/Nk9gi25h/jFRkwmyxahN2y5p9ERva6GlROXoQSiq6r+YS5F69b3lBTHmLlSS9mrQ0VygotiHt/V
	ByrWYzYHLDyNigF0hXgdSOlcqiRJWtZLnujfMod0qvgzQQTrQt/P5CwyJ5I0+QW77QsbjmtRqritM
	Zf2CwPL7xzSXqcHiSVmWBArfPJxOwuNbWpjH+o/1fyBthLMS4aI/2dw1YiI7lplwhCqnjpvqFK4Ig
	vioK3W70XS/T5d0LgETqK1v50ahT9yGZvuCCup1SbyAxQg4jJ8deYIdYyBO9+tzIc8RPi8Vk58qbr
	eM8XDe64+6BJoyInzOog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivh2t-0005CN-GM; Sun, 26 Jan 2020 12:29:43 +0000
Received: from mail.astim.si ([93.103.6.239])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivh2l-0005By-62
 for openwrt-devel@lists.openwrt.org; Sun, 26 Jan 2020 12:29:37 +0000
Received: from PCSaso ([192.168.10.2])
 by mail.astim.si (8.14.4/8.14.4) with ESMTP id 00QCTQUH028782
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 Jan 2020 13:29:26 +0100
From: "Saso Slavicic" <saso.linux@astim.si>
To: <openwrt-devel@lists.openwrt.org>
Date: Sun, 26 Jan 2020 13:29:27 +0100
Message-ID: <000301d5d444$3fccd1f0$bf6675d0$@astim.si>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdXUQ1R2nAl3d918SzWxU7wvXJWYag==
Content-Language: sl
X-Scanned-By: MIMEDefang 2.84
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_042935_548861_E538773D 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] umdns Command failed: Invalid argument after
 libubox commit 43a103ff17ee
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,


After the "blobmsg: blobmsg_parse and blobmsg_parse_array oob read fixes"
update in libubox, umdns will fail to start with error printed in log:

procd: /etc/rc.d/S80umdns: Command failed: Invalid argument

The startup script sends this command to ubus and the command fails:

# ubus call umdns set_config '{ "interfaces": [ "br-lan" ] }'
Command failed: Invalid argument

In umdns, the command fails in function umdns_set_config() after doing:

if (!blobmsg_check_attr_list(data[CFG_INTERFACES], BLOBMSG_TYPE_STRING))
	return UBUS_STATUS_INVALID_ARGUMENT;


I've done some debugging and command will fail if the name of the interface
is shorter than 8 characters, which br-lan is.

After doing some digging around the sources of libubox, the check fail in
blobmsg_check_name() on the line:

if ((char *) hdr->name + blobmsg_namelen(hdr) + 1 > limit)
	return false;

I've added the printf statement just above:

printf("hdr->name: %s, namelen: %d, attr: %s (%d)\n", hdr->name,
blobmsg_namelen(hdr), (char *)attr, len);
printf("hdr->name: %p, attr: %p (%d), limit: %p\n", hdr->name, attr, len,
limit);

and the result (of the failed attempt) is:

hdr->name: interfaces, namelen: 10, attr: - (16)
hdr->name: 0x95404e, attr: 0x954048 (16), limit: 0x954058

It would seem as if the code is trying to compare the length of the
attribute (br-lan I would assume) with the length of the name of the data
section.
If the attribute is too short, the 'interfaces' string is longer and the
check fails...

I'm sorry I don't know that much about the ubus code to see where exactly
this logic fails.


Regards, Saso


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
