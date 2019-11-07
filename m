Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA8FF2DCA
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 Nov 2019 12:56:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qLKX71ss/+Pa3W2yeSFP843yL7E+A7/56+P38osPzSE=; b=oUFsjwNT158T+t
	RYoju9HfACA2rEEqkoWkjznzqc0cHeTCVIXzbwi7611KfbjFydBCgRjltlX9tkeoDkn11/QJ2m3AT
	4vZdcvjnVUsMkizZK+U2tw4ReXYRgrpWxJq3YijEH+9W0rKotzGDMSaNE77B6T6TRUwQrwuI/vWQb
	Tjfo8/cfxdI8kA8NUhGcRnzW6yFa11t5IeX/7akPrl9xFDVnNfpQoz9a2RJGoDT0M8eyWAhuvepRW
	CmfsNKraRu4rbpL6lxFg04/KnBJ47jGXkx0dRgVEsGYmR9ZxtAwuss+3fsg+13Ax/vkeBP8RYG4vr
	5Yd2slqiThNcNElPzVSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgOF-0001Z3-4o; Thu, 07 Nov 2019 11:55:51 +0000
Received: from mail.neratec.com ([46.140.151.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgNn-0001H6-Nc
 for openwrt-devel@lists.openwrt.org; Thu, 07 Nov 2019 11:55:25 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.neratec.com (Postfix) with ESMTP id B9637CE092A;
 Thu,  7 Nov 2019 12:55:15 +0100 (CET)
Received: from mail.neratec.com ([127.0.0.1])
 by localhost (mail.neratec.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 0oHDEhzUoOuC; Thu,  7 Nov 2019 12:55:15 +0100 (CET)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.neratec.com (Postfix) with ESMTP id 9789ACE095F;
 Thu,  7 Nov 2019 12:55:15 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.neratec.com 9789ACE095F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=neratec.com;
 s=9F5C293A-195B-11E9-BBA5-B4F3B9D999CA; t=1573127715;
 bh=yXEBSGwlfQVfW+9KJ8q5NFTcZ8gA6zaom2Xmz+xmlQQ=;
 h=From:To:Date:Message-Id;
 b=cN2iv4rMkdjfMqe0jMghYu2QiVJ1sar5qWuVW3gCp+W4roZZeeyNiiGRYTYasL6NM
 HkJoViFQPm2j8VamdbQnFrWCm8yT0WlPEGA8BbInK9XMkz+nWF75q29nLiJRL0WiR5
 OB1W49zmc9zO4rtyGUP9M6jShFvaQj2yD3/aYMKo7aw4Z60czH9Xxmjz/KqkHCoLEl
 /YEHIDjIXzbrogl/OQ6ppnDqilAi8rIBgni4Xppf5e8My3CYl300F+pLk13VJWRcfV
 JYvmhm6Mors5QBHV0FwST0/I1ijVOrlCX2RZgjrgsYPvLr6gtswoPWYEh8Dtf9RId9
 gSmh985cA7zDw==
X-Virus-Scanned: amavisd-new at neratec.com
Received: from mail.neratec.com ([127.0.0.1])
 by localhost (mail.neratec.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id xtVgZSrfnO7u; Thu,  7 Nov 2019 12:55:15 +0100 (CET)
Received: from zefir.lan.neratec.com (zefir.lan.neratec.com [172.29.101.50])
 by mail.neratec.com (Postfix) with ESMTPSA id 7A2FECE092A;
 Thu,  7 Nov 2019 12:55:15 +0100 (CET)
From: Zefir Kurtisi <zefir.kurtisi@neratec.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  7 Nov 2019 12:54:08 +0100
Message-Id: <20191107115408.13013-1-zefir.kurtisi@neratec.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_035524_248861_B0D98CEC 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] uqmi: add timeout parameter
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
Cc: bjorn@mork.no, malaakso@elisanet.fi
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Working with Quectel EM12 LTE-module, we observe
regular stalls of the QMI interface which cause
a request issued by uqmi to hang forever.

Most reproducibly this happens after the device
has been power-cycled and left untouched for a
while (~ 60s+). Most of the time the very first
QMI request fails, since it is not responded by
the module. This is the strace from such a run
(from --get-pin-status):

 open("/dev/cdc-wdm0", O_RDWR|O_EXCL|O_NOCTTY|O_NONBLOCK|O_LARGEFILE) = 6
 fcntl64(6, F_GETFL)                     = 0x10802 (flags O_RDWR|O_NONBLOCK|O_LARGEFILE)
 fcntl64(6, F_SETFL, O_RDWR|O_NONBLOCK|O_LARGEFILE) = 0
 epoll_ctl(3, EPOLL_CTL_ADD, 6, {EPOLLIN|EPOLLRDHUP|EPOLLET, {u32=268567076, u64=1153486808202346496}}) = 0
 write(6, "\1\17\0\0\0\0\0\1\"\0\4\0\1\1\0\2", 16) = 16
 clock_gettime(CLOCK_MONOTONIC, {tv_sec=95, tv_nsec=583444789}) = 0
 clock_gettime(CLOCK_MONOTONIC, {tv_sec=95, tv_nsec=583770264}) = 0
 epoll_pwait(3,
 [ hang forever ]

After killing the blocked uqmi process, the next
request works as expected.

We don't know whether this is a device FW issue
(we use the latest EM12GPAR01A15M4G) or whether
the device enters some undocumented power-save
mode after idling for some time.

This patch extends uqmi with a timeout option
(-t, --timeout <ms>) which if set terminates a
request after the given amount of msecs. In
our usecase it provides a means of preventing
infinitively stuck QMI requests. Since we
observe the issue only for the very first
request after cold-boot, we use a dummy access
early in qmi.sh, e.g.
  uqmi -d /dev/cdc-wdm0 --get-pin-status -t 3000 >/dev/null 2>&1

This ensures the QMI interface is un-stuck in
case it entered the stall-state observed. The
change is intentionally not included in this
commit, since you don't need it if it works
for you.


Signed-off-by: Zefir Kurtisi <zefir.kurtisi@neratec.com>
---
 main.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/main.c b/main.c
index 9b43e5e..aa4634c 100644
--- a/main.c
+++ b/main.c
@@ -44,6 +44,7 @@ static const struct option uqmi_getopt[] = {
 	{ "keep-client-id", required_argument, NULL, 'k' },
 	{ "release-client-id", required_argument, NULL, 'r' },
 	{ "mbim",  no_argument, NULL, 'm' },
+	{ "timeout", required_argument, NULL, 't' },
 	{ NULL, 0, NULL, 0 }
 };
 #undef __uqmi_command
@@ -57,6 +58,7 @@ static int usage(const char *progname)
 		"  --keep-client-id <name>:          Keep Client ID for service <name>\n"
 		"  --release-client-id <name>:       Release Client ID after exiting\n"
 		"  --mbim, -m                        NAME is an MBIM device with EXT_QMUX support\n"
+		"  --timeout, -t                     response timeout in msecs\n"
 		"\n"
 		"Services:                           dms, nas, pds, wds, wms\n"
 		"\n"
@@ -103,6 +105,14 @@ static void handle_exit_signal(int signal)
 	uloop_end();
 }
 
+static void _request_timeout_handler(struct uloop_timeout *timeout)
+{
+	fprintf(stderr, "Request timed out\n");
+	handle_exit_signal(0);
+}
+
+struct uloop_timeout request_timeout = { .cb = _request_timeout_handler, };
+
 int main(int argc, char **argv)
 {
 	static struct qmi_dev dev;
@@ -112,7 +122,7 @@ int main(int argc, char **argv)
 	signal(SIGINT, handle_exit_signal);
 	signal(SIGTERM, handle_exit_signal);
 
-	while ((ch = getopt_long(argc, argv, "d:k:sm", uqmi_getopt, NULL)) != -1) {
+	while ((ch = getopt_long(argc, argv, "d:k:smt:", uqmi_getopt, NULL)) != -1) {
 		int cmd_opt = CMD_OPT(ch);
 
 		if (ch < 0 && cmd_opt >= 0 && cmd_opt < __UQMI_COMMAND_LAST) {
@@ -136,6 +146,9 @@ int main(int argc, char **argv)
 		case 'm':
 			dev.is_mbim = true;
 			break;
+		case 't':
+			uloop_timeout_set(&request_timeout, atol(optarg));
+			break;
 		default:
 			return usage(argv[0]);
 		}
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
