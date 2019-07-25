Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 649197532B
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 17:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DktxWDjtBJ/prgajjDgXm75jmurtuAGKyTQb+jlUASk=; b=nPehxNPOBw5Yoz
	qZa5mT70lKkHsEO3xiQQmyremC/zJFojpqK+DJfnKnnOeEPIKK2L5DhtcJeRXooTmcZLpWCC0hjn8
	OU6NqtwPsVn9nkchhdqqRc+GJvQRG1ulNZZti949/lAO9n8gsRhv2oVaANRodymZxQ34Qb4cVt9oN
	F1RVD/ELo2ghTpDOoHAo8ZyZNqH1W1afroxSm5UebpYf91A3HuMTXM0JWNsEjQEJmqU6fy+4DUhSR
	wu3RsoEF19qkxE5Ik1QgEjjDZov1FW8qLdoLbmY+TZjfug0xovP69mFArAxOxFP3Mc8lohvrRYITu
	wWkmJNiLcxTjlS+F2IHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfzR-0004xN-9a; Thu, 25 Jul 2019 15:49:09 +0000
Received: from mail.neratec.com ([46.140.151.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfyz-0004vy-2g
 for openwrt-devel@lists.openwrt.org; Thu, 25 Jul 2019 15:48:43 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.neratec.com (Postfix) with ESMTP id DF397CE03E1;
 Thu, 25 Jul 2019 17:43:22 +0200 (CEST)
Received: from mail.neratec.com ([127.0.0.1])
 by localhost (mail.neratec.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id zNcvqobfxd_f; Thu, 25 Jul 2019 17:43:22 +0200 (CEST)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.neratec.com (Postfix) with ESMTP id BCCFBCE03E7;
 Thu, 25 Jul 2019 17:43:22 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.neratec.com BCCFBCE03E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=neratec.com;
 s=9F5C293A-195B-11E9-BBA5-B4F3B9D999CA; t=1564069402;
 bh=OwPNavUc/LJ8DEKnVrEtoMom0nZW5psZhtkPMNtB7HY=;
 h=From:To:Date:Message-Id;
 b=n/tSAVTaJ0OaIl6q24alPW6bnjClEcO9V2hXRGA/FcrvhGUsW6AwbFiUeP1q1bLrf
 jtfXrJ/VRTA7iKTbD/uE/NYDNyhEzJ5YZ4R7oOfPDNm2lW7rpm/r4HxWjf9vqAoy1+
 xKF38uEaUiTuTv9Ik+1riO2rIqY7du+WX7xJaV+qvi8DmVo++NaCJsZSij2YsDSE1c
 KnmsHJcOk9aFbbwk2j3PZmrdr0PQK/k4LLbnib3FMT034dbRPjOW3NYghAF1a4Pgt4
 P0sWj3t0vGwhFI8sDFG/ZDi2Tx6RY8Q9neaizm00Klju65cGvWxv0iYA2190/6xg2S
 gOMb/oXWhOyfA==
X-Virus-Scanned: amavisd-new at neratec.com
Received: from mail.neratec.com ([127.0.0.1])
 by localhost (mail.neratec.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id G68nwLLfzZml; Thu, 25 Jul 2019 17:43:22 +0200 (CEST)
Received: from zefir.lan.neratec.com (zefir.lan.neratec.com [172.29.101.50])
 by mail.neratec.com (Postfix) with ESMTPSA id A93D7CE03E1;
 Thu, 25 Jul 2019 17:43:22 +0200 (CEST)
From: Zefir Kurtisi <zefir.kurtisi@neratec.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 25 Jul 2019 17:43:15 +0200
Message-Id: <20190725154315.7777-1-zefir.kurtisi@neratec.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_084841_592429_D1ECD4F9 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] logread: add option to filter for facilities
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
Cc: john@phrozen.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds filtering options for facilities as follows:
    -z	<facility>	handle only messages with given facility (0-23), repeatable
    -Z	<facility>	ignore messages with given facility (0-23), repeatable

With that
* 'logread -z 2 -z 16' will display all MAIL and LOCAL0 messages, while
* 'logread -Z 2 -Z 16' will display all but MAIL and LOCAL0 messages

Signed-off-by: Zefir Kurtisi <zefir.kurtisi@neratec.com>
---
 log/logread.c | 29 +++++++++++++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/log/logread.c b/log/logread.c
index e47541a..a764742 100644
--- a/log/logread.c
+++ b/log/logread.c
@@ -66,6 +66,18 @@ static int log_type = LOG_STDOUT;
 static int log_size, log_udp, log_follow, log_trailer_null = 0;
 static int log_timestamp;
 static int logd_conn_tries = LOGD_CONNECT_RETRY;
+static int facility_include;
+static int facility_exclude;
+
+/* check for facility filter; return 0 if message shall be dropped */
+static int check_facility_filter(int f)
+{
+	if (facility_include)
+		return !!(facility_include & (1 << f));
+	if (facility_exclude)
+		return !(facility_exclude & (1 << f));
+	return 1;
+}
 
 static const char* getcodetext(int value, CODE *codetable) {
 	CODE *i;
@@ -133,6 +145,10 @@ static int log_notify(struct blob_attr *msg)
 			exit(-1);
 		}
 	}
+	p = blobmsg_get_u32(tb[LOG_PRIO]);
+
+	if (!check_facility_filter(LOG_FAC(p)))
+			return 0;
 
 	m = blobmsg_get_string(tb[LOG_MSG]);
 	if (regexp_pattern &&
@@ -145,7 +161,6 @@ static int log_notify(struct blob_attr *msg)
 				(unsigned long)t, t_ms);
 	}
 	c = ctime(&t);
-	p = blobmsg_get_u32(tb[LOG_PRIO]);
 	c[strlen(c) - 1] = '\0';
 
 	if (log_type == LOG_NET) {
@@ -212,6 +227,8 @@ static int usage(const char *prog)
 		"    -p	<file>		PID file\n"
 		"    -h	<hostname>	Add hostname to the message\n"
 		"    -P	<prefix>	Prefix custom text to streamed messages\n"
+		"    -z	<facility>	handle only messages with given facility (0-23), repeatable\n"
+		"    -Z	<facility>	ignore messages with given facility (0-23), repeatable\n"
 		"    -f			Follow log messages\n"
 		"    -u			Use UDP as the protocol\n"
 		"    -t			Add an extra timestamp\n"
@@ -290,7 +307,7 @@ int main(int argc, char **argv)
 
 	signal(SIGPIPE, SIG_IGN);
 
-	while ((ch = getopt(argc, argv, "u0fcs:l:r:F:p:S:P:h:e:t")) != -1) {
+	while ((ch = getopt(argc, argv, "u0fcs:l:z:Z:r:F:p:S:P:h:e:t")) != -1) {
 		switch (ch) {
 		case 'u':
 			log_udp = 1;
@@ -320,6 +337,14 @@ int main(int argc, char **argv)
 		case 'l':
 			lines = atoi(optarg);
 			break;
+		case 'z':
+			id = strtoul(optarg, NULL, 0) & 0x1f;
+			facility_include |= (1 << id);
+			break;
+		case 'Z':
+			id = strtoul(optarg, NULL, 0) & 0x1f;
+			facility_exclude |= (1 << id);
+			break;
 		case 'S':
 			log_size = atoi(optarg);
 			if (log_size < 1)
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
