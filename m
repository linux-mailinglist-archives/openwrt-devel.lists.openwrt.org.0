Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FE9E6FAF
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 11:32:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KyeWCVAR8RYLqJSR+cE5kQm9Gjmchw8jMCpUZiyaBmk=; b=uSx3NSjOr7Z++k
	FJKBTM8pkDWgqC/gQQ95d6lD/5dmygbF6DI+z6hNiwMOSS4I34hrENSC/Z01f+JMkCJDhZBfYJ4u5
	Q952nk1oQraoDDPpMrak2FzijZySb6ftbQh+voVyR/a2w2e78z/mYvKB1sdT+YnsdBjOB87IoSo1u
	jW+m2R1HjT/zbqQy7JveLo0crkmGomJnJO7NBwgllGewgBijomzNDeg0UPyVKLltSt8YjQbH9ZHu/
	9037lnSM4LU7I1hxycFk3PEZtQjH+fhvf9Y47Uk7AX4kCC13Iyf4wmVoMUZOfSgv1dK51aiIS5oAU
	BmdnQeY7vYpPSTIWpjyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP2KP-0007GT-Cw; Mon, 28 Oct 2019 10:32:49 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP2KG-00076N-JL
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 10:32:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To:From;
 bh=iFg/M05vW3WBb+0HqDx2knN6cdVd/MCnhdtP7YSt7oc=; 
 b=tEJbx2ipAwAtFP4nJzoZXgpZPbs1r/V+hWQDQsIP3jVfWLWAL2taq7LRLjtzIg6AX3PVKcTc71OXsZ1d7IY1rjsRkLJiG4g2sF3X2dRFZqeQkXRgDso81GBOQIecqpSxdTE2RHs4UuYXgLcaB9oZ6luQ0OdhBYmpR4LIKLF316I=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 28 Oct 2019 11:32:14 +0100
Message-Id: <20191028103214.28200-1-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a05:a1c7:1:b101:9dc3:29b3:6c32:a341
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1iP2JY-0006VT-60
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a05:a1c7:1:b101:9dc3:29b3:6c32:a341]
 (helo=lappi.newmedia-net.de)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1iP2JY-0006VT-60; Mon, 28 Oct 2019 11:31:56 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_033241_113863_DA3A7A62 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] rpcd: uci: fix segfault and double free on
 set method
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
Cc: Daniel Danzberger <daniel@dd-wrt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Invalid reuse of pointers from uci_ptr can cause the rcpd to segfault on already freed memory.
This bug could be trigged by calling 'set' with emtpy values on multiple non existing or already cleard options.

For example:
 ubus call uci set '{"config":"network","section":"wan","values":{"proto":"static","foo":"", "bar":""}}'

Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
---
 uci.c | 55 ++++++++++++++++++++++++++-----------------------------
 1 file changed, 26 insertions(+), 29 deletions(-)

diff --git a/uci.c b/uci.c
index 1587a19..e6ddbb5 100644
--- a/uci.c
+++ b/uci.c
@@ -812,55 +812,58 @@ out:
  *     option of if the existing options value differs from the blob value
  */
 static int
-rpc_uci_merge_set(struct blob_attr *opt, struct uci_ptr *ptr)
+rpc_uci_merge_set(struct blob_attr *opt,
+			struct uci_package *package,
+			const char *section)
 {
+	struct uci_ptr ptr = {};
 	struct blob_attr *cur;
 	int rem, rv;
 
-	ptr->o = NULL;
-	ptr->option = blobmsg_name(opt);
-	ptr->value = NULL;
+	ptr.p = package;
+	ptr.section = section;
+	ptr.option = blobmsg_name(opt);
 
-	if (!rpc_uci_verify_name(ptr->option))
+	if (!rpc_uci_verify_name(ptr.option))
 		return UBUS_STATUS_INVALID_ARGUMENT;
 
-	if (rpc_uci_lookup(ptr) || !ptr->s)
+	if (rpc_uci_lookup(&ptr) || !ptr.s)
 		return UBUS_STATUS_NOT_FOUND;
 
 	if (blobmsg_type(opt) == BLOBMSG_TYPE_ARRAY)
 	{
-		if (ptr->o)
-			uci_delete(cursor, ptr);
+		if (ptr.o)
+			uci_delete(cursor, &ptr);
 
 		rv = UBUS_STATUS_INVALID_ARGUMENT;
 
 		blobmsg_for_each_attr(cur, opt, rem)
 		{
-			if (!rpc_uci_format_blob(cur, &ptr->value))
+			if (!rpc_uci_format_blob(cur, &ptr.value))
 				continue;
 
-			uci_add_list(cursor, ptr);
+			uci_add_list(cursor, &ptr);
 			rv = 0;
 		}
 
 		return rv;
 	}
-	else if (ptr->o && ptr->o->type == UCI_TYPE_LIST)
+	else if (ptr.o && ptr.o->type == UCI_TYPE_LIST)
 	{
-		uci_delete(cursor, ptr);
+		uci_delete(cursor, &ptr);
 
-		if (!rpc_uci_format_blob(opt, &ptr->value))
+		if (!rpc_uci_format_blob(opt, &ptr.value))
 			return UBUS_STATUS_INVALID_ARGUMENT;
 
-		uci_set(cursor, ptr);
+		uci_set(cursor, &ptr);
 	}
 	else
 	{
-		if (!rpc_uci_format_blob(opt, &ptr->value))
+		if (!rpc_uci_format_blob(opt, &ptr.value))
 			return UBUS_STATUS_INVALID_ARGUMENT;
 
-		if (!ptr->o || !ptr->o->v.string || strcmp(ptr->o->v.string, ptr->value))
-			uci_set(cursor, ptr);
+		if (!ptr.o || !ptr.o->v.string || strcmp(ptr.o->v.string, ptr.value))
+			uci_set(cursor, &ptr);
 	}
 
 	return 0;
@@ -875,7 +878,7 @@ rpc_uci_set(struct ubus_context *ctx, struct ubus_object *obj,
 	struct blob_attr *cur;
 	struct uci_package *p = NULL;
 	struct uci_element *e;
-	struct uci_ptr ptr = { 0 };
+	const char *package, *section;
 	int rem, rv, err = 0;
 
 	blobmsg_parse(rpc_uci_set_policy, __RPC_S_MAX, tb,
@@ -892,17 +895,17 @@ rpc_uci_set(struct ubus_context *ctx, struct ubus_object *obj,
 	    !rpc_uci_verify_section(blobmsg_data(tb[RPC_S_SECTION])))
 		return UBUS_STATUS_INVALID_ARGUMENT;
 
-	ptr.package = blobmsg_data(tb[RPC_S_CONFIG]);
+	package = blobmsg_data(tb[RPC_S_CONFIG]);
 
-	if (uci_load(cursor, ptr.package, &p))
+	if (uci_load(cursor, package, &p))
 		return rpc_uci_status();
 
 	if (tb[RPC_S_SECTION])
 	{
-		ptr.section = blobmsg_data(tb[RPC_S_SECTION]);
+		section = blobmsg_data(tb[RPC_S_SECTION]);
 		blobmsg_for_each_attr(cur, tb[RPC_S_VALUES], rem)
 		{
-			rv = rpc_uci_merge_set(cur, &ptr);
+			rv = rpc_uci_merge_set(cur, p, section);
 
 			if (rv)
 				err = rv;
@@ -916,12 +919,9 @@ rpc_uci_set(struct ubus_context *ctx, struct ubus_object *obj,
 			                           tb[RPC_S_TYPE], tb[RPC_S_MATCH]))
 				continue;
 
-			ptr.s = NULL;
-			ptr.section = e->name;
-
 			blobmsg_for_each_attr(cur, tb[RPC_S_VALUES], rem)
 			{
-				rv = rpc_uci_merge_set(cur, &ptr);
+				rv = rpc_uci_merge_set(cur, p, e->name);
 
 				if (rv)
 					err = rv;
@@ -929,9 +929,6 @@ rpc_uci_set(struct ubus_context *ctx, struct ubus_object *obj,
 		}
 	}
 
-	if (!err && !ptr.s)
-		err = UBUS_STATUS_NOT_FOUND;
-
 	if (!err)
 		uci_save(cursor, p);
 
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
