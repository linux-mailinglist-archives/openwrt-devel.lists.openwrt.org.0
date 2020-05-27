Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7811E628E
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 15:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qZlY0AvOZz6ZXcNDThJmvKYj5+9g1lngk196z89ESNI=; b=qi+fxlUOX5OJ+WWGFc0PgbwNy
	Pd7etza1tbNkk55Te2moOjhrYK7tbmYkNlVusegYdFW9uSYpbDLYWAFGvdD4jsdKKN7n7KWDHoL+y
	OqIOn7yclY+k8O45XjhpsllER3pLOvpAoxwZEsjgNFoowuRDfmMHc7W/FuRiSkKsFZ340r9S/k8HB
	FYjhFUdlZKe2JN4ukDxHZ1Mc6Q0A0i3tNDl0IZfwfwJ65fTyKm+61QER0hSkzYkyffNp4tzcHQX8U
	t19ZiH7NSZn8l0TajhIVGGBG9omaNgxMB+f7JGl4Gw8HBnYZFjpUDs3EgMjOSy4I1kbSHmNHbpToX
	vXQqCKzSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeIos-0003dA-38; Thu, 28 May 2020 13:43:38 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeIod-0003WD-Ld
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 13:43:25 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id 5AFE220B00;
 Wed, 27 May 2020 09:30:32 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 27 May 2020 11:30:32 +0200
From: Martin Schiller <ms@dev.tdt.de>
To: Jo-Philipp Wich <jo@mein.io>
Organization: TDT AG
In-Reply-To: <f1c8852d02d8b622ca96904249a0c504@dev.tdt.de>
References: <fafbf36d69f33eb2c5ed323337134753@dev.tdt.de>
 <f1c8852d02d8b622ca96904249a0c504@dev.tdt.de>
Message-ID: <0ce295c40048f432624afecda6be661f@dev.tdt.de>
X-Sender: ms@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_064323_887522_EBCDB01D 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] problems with virtual sub interfaces in
 firewall zones
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
Cc: Openwrt Devel <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2020-05-07 07:39, Martin Schiller wrote:
> On 2020-05-07 06:47, Martin Schiller wrote:
>> Hi Jo,
>> Hi all,
>> 
>> I've encountered a problem with the change you made with commit
>> 64bb88841fbc ("uqmi: inherit firewall zone membership to virtual sub
>> interfaces") which was introduced to fix FS#2122.
>> 
>> This change makes it impossible to move an interface from one zone to
>> another without a reconnect of that interface, because the related
>> zone is stored during interface setup and fw3 will use this value
>> even if the parent interface is already in another zone.
>> 
>> I have a case here, where the target zone of an (wwan/qmi) interface
>> is decided by an iface-hotplug script on an if-up event and i don't
>> want / can't reconnect the interface right after it's coming up.
>> 
>> Is there a possibility to get this working again?
> 
> What about storing the information (name) of the parent interface
> instead of the zone and let fw3 dynamically take the zone of the
> parent interface?
> 

OK, so please have a look at the patch below. It works as expected
for me.

If there is a "parent" information (name of the parent interface)
in the data section of an interface, then let's check if this
parent interface is a member the current zone.

Of course, the proto handler(s) also need to be patched to save the
parent information instead of the zone.

---
  ubus.c | 15 +++++++++++++--
  1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/ubus.c b/ubus.c
index cf5c8b1..d77807c 100644
--- a/ubus.c
+++ b/ubus.c
@@ -228,6 +228,7 @@ void
  fw3_ubus_zone_devices(struct fw3_zone *zone)
  {
  	struct blob_attr *c, *cur, *dcur;
+	struct fw3_device *net;
  	unsigned r, rem, drem;
  	const char *name;
  	bool matches;
@@ -239,10 +240,20 @@ fw3_ubus_zone_devices(struct fw3_zone *zone)
  		blobmsg_for_each_attr(cur, c, rem) {
  			if (!strcmp(blobmsg_name(cur), "interface"))
  				name = blobmsg_get_string(cur);
-			else if (!strcmp(blobmsg_name(cur), "data"))
-				blobmsg_for_each_attr(dcur, cur, drem)
+			else if (!strcmp(blobmsg_name(cur), "data")) {
+				blobmsg_for_each_attr(dcur, cur, drem) {
  					if (!strcmp(blobmsg_name(dcur), "zone"))
  						matches = !strcmp(blobmsg_get_string(dcur), zone->name);
+					/* check, if the parent interface is in this zone */
+					else if (!strcmp(blobmsg_name(dcur), "parent")) {
+						list_for_each_entry(net, &zone->networks, list)
+						{
+							if (!strcmp(blobmsg_get_string(dcur), net->name))
+								matches = true;
+						}
+					}
+				}
+			}
  		}

  		if (name && matches)
-- 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
