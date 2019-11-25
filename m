Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8481090C6
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 16:10:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J4F2+40wEXrJweDtZoZq2R/QsC3rpp2MhFPWTcoXTyo=; b=PtmzdflI1z4tPw
	ZJDp6sfs0vh+HQ7OlV7WuLDTK9YJYQBRXQDV/pwha9ztcwJ5Mh1DvM/CAGtkBbh2fX6KGVL5KreKw
	UEsB+mKcaHJU7acKtozGl4L1yAZRhNyz6aQtzKArHmKl+54aAwQHRrBlnO59rmMFIWrgyJpEN9AxU
	tkbCP0Y0H0R8ZxnovN748oTne6nZx/LLgAypNsDBHaix7ajL2xGzBD/Ww0ZzUIf1zUlxHDID8tUje
	iRKurTS1NmZmD5NbeYoqG+ADsxwqX2mLj27QdT+JSH7xrrsOhfzysCCytgV6OXfruLNMlxLAaUvKA
	2lTc1qHYTMqt0CkJmG8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZG0U-0008ND-FS; Mon, 25 Nov 2019 15:10:30 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZG0K-0008Ip-CY
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 15:10:22 +0000
Received: by mail-qt1-x82d.google.com with SMTP id i17so17554660qtq.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 07:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=MQOBgmGjtIa6twf9ZjF4MxIjA6xzX0FlHmwJtUzfdzA=;
 b=dLv3HLpNADslsiYWmYz0dOLy+E6MrWZauwYrrIz8/eIyg9CvnOUUO3k3O2Q+8pc+si
 GYrOaUPKPiBrxplIUlmJIqF3aGMqKoncrJ1tpd+C6fcBsb2sd0mMkvTWb7c0A5aa/mI8
 iI5+2VerxGauTnJ6DXtygGQyw/qqeZ4V/i8z7c3iOHcTysCJlk1Z82IwPQ7pzGpwF9J9
 sFusK3PghIU3CAfW63+VE98ZW/0cGVDEX8oV1cqSrkg+H6f5IAQzc2zQyWFUbgHVKusm
 5/uYzBlptwUj43qV0wLNR+VrMHXI72B8jrWBbyMPgxwTc7dHfa1WcCnAvDCaMN20QYDG
 eu8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=MQOBgmGjtIa6twf9ZjF4MxIjA6xzX0FlHmwJtUzfdzA=;
 b=lKWytAdXZK6jEqIGRPXLgrNkiyRuXiBj42Ei1DkTMoOZqDaEf1lr4TFbY92+OcJcE+
 jLiU6drysVI8eOXVcn38nKNUjJk7Gp8+zsH+9l/GY4aGpO6yC2GE8ZFqXKFUKh7PT1d0
 d6tV7VGmuPaHOSIrIfvs8zZIq1NTf6paX3iWXudoB0dLMnCg6/bio2Hf5Ym4MmSG+1xZ
 WYG/TdkqSximwFsvePk/t3iggwM+3PK/BcrAS6QG5S72NvfkZC/e6/PXoS23w5U+dcyR
 cv+XKYDJHf4dBOY+/WCeb6BBW+730/VMz+AZKAfmXFCteEmPq+uMJFOtxiZ2VyDuLiOt
 JB/w==
X-Gm-Message-State: APjAAAUzQLYe/SSDQWpQHNvUMmYxjtO+eT0FsiMldMQPlNmUo9Pg97en
 4BmTD4a3KkFdLyX99tGpuJovA/eIoPQnLr9q6bdvItj2
X-Google-Smtp-Source: APXvYqxg/WsXKnrNqGVzNdchAczDcUtor2/y2ENulXdalI4P9A76S5rMzKnhooBZui4uRPCmFuky2egexXxoWXyxbVQ=
X-Received: by 2002:aed:3467:: with SMTP id w94mr29690433qtd.166.1574694615128; 
 Mon, 25 Nov 2019 07:10:15 -0800 (PST)
MIME-Version: 1.0
From: Matej Kupljen <matej.kupljen@gmail.com>
Date: Mon, 25 Nov 2019 16:10:03 +0100
Message-ID: <CAHMF36G6ykq3uZ5VUp99092byVV4fG8s6sp0EsBD+QDG8fyYMg@mail.gmail.com>
To: Felix Fietkau <nbd@nbd.name>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_071020_428992_FFA958B7 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matej.kupljen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] Add support for multiple Radius servers
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi all,

this patch adds support for specifying multiple radius servers, since
hostapd supports it.

BR,
Matej

From b10c290b4847a96323f9470dc2aed51543f08ab3 Mon Sep 17 00:00:00 2001
From: Matej Kupljen <matej.kupljen@gmail.com>
Date: Mon, 25 Nov 2019 15:37:01 +0100
Subject: [PATCH] Add support for multiple Radius servers

hostapd.conf supports specifying primary and more secondary Radius servers, but
UCI configuration does not.
This patch adds a list option for specifying Authentication and Accounting
servers and will convert them to hostapd.conf format.

As a filed separator between fields ';' has been selected and thus cannot be
used as a character in shared secret parameter. The format of the list is:

list 'secret;ip;port'

Signed-off-by: Matej Kupljen <matej.kupljen@gmail.com>
---
 .../network/services/hostapd/files/hostapd.sh | 41 +++++++++++++++++--
 1 file changed, 38 insertions(+), 3 deletions(-)

diff --git a/package/network/services/hostapd/files/hostapd.sh
b/package/network/services/hostapd/files/hostapd.sh
index f03b98ff85..9047d48a87 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -188,6 +188,9 @@ hostapd_common_add_bss_config() {
  config_add_string auth_secret
  config_add_int 'auth_port:port' 'port:port'

+ config_add_array auth_servers
+ config_add_array acct_servers
+
  config_add_string acct_server
  config_add_string acct_secret
  config_add_int acct_port
@@ -316,6 +319,8 @@ hostapd_set_bss_options() {
  }

  [ -n "$nasid" ] && append bss_conf "nas_identifier=$nasid" "$N"
+
+ # legacy compatibility
  [ -n "$acct_server" ] && {
  append bss_conf "acct_server_addr=$acct_server" "$N"
  append bss_conf "acct_server_port=$acct_port" "$N"
@@ -337,6 +342,20 @@ hostapd_set_bss_options() {
  esac
  [ -n "$sae_require_mfp" ] && append bss_conf
"sae_require_mfp=$sae_require_mfp" "$N"

+ # List of acct servers
+ json_get_values acct_servers_list acct_servers
+ for svr in $acct_servers_list; do
+ acct_secret=${svr%%;*}
+ svr=${svr#*;}
+ acct_server=${svr%%;*}
+ acct_port=${svr##*;}
+
+ set_default acct_port 1813
+ append bss_conf "acct_server_addr=$acct_server" "$N"
+ append bss_conf "acct_server_port=$acct_port" "$N"
+ append bss_conf "acct_server_shared_secret=$acct_secret" "$N"
+ done
+
  local vlan_possible=""

  case "$auth_type" in
@@ -387,10 +406,26 @@ hostapd_set_bss_options() {
  set_default auth_port 1812
  set_default dae_port 3799

+ # leave the default option for legacy compatibility
+ [ -n "$auth_server" ] && {
+ append bss_conf "auth_server_addr=$auth_server" "$N"
+ append bss_conf "auth_server_port=$auth_port" "$N"
+ append bss_conf "auth_server_shared_secret=$auth_secret" "$N"
+ }

- append bss_conf "auth_server_addr=$auth_server" "$N"
- append bss_conf "auth_server_port=$auth_port" "$N"
- append bss_conf "auth_server_shared_secret=$auth_secret" "$N"
+ # List of fallback RADIUS servers
+ json_get_values auth_servers_list auth_servers
+ for svr in $auth_servers_list; do
+ auth_secret=${svr%%;*}
+ svr=${svr#*;}
+ auth_server=${svr%%;*}
+ auth_port=${svr##*;}
+
+ set_default auth_port 1812
+ append bss_conf "auth_server_addr=$auth_server" "$N"
+ append bss_conf "auth_server_port=$auth_port" "$N"
+ append bss_conf "auth_server_shared_secret=$auth_secret" "$N"
+ done

  [ -n "$eap_reauth_period" ] && append bss_conf
"eap_reauth_period=$eap_reauth_period" "$N"

-- 
2.17.1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
