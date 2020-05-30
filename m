Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EEB1E8CE2
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 03:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=d0Lspq+ObRqvMHYP7WVzycBik1sl8CyNIcyvlTMzVkc=; b=HRc
	+9BR9ymZwiYaRREaDTvwlviQtkocAU07CdUeqwu64GFeh08vSE8x/H9dCVzxKXlIijFxZcHzhIufZ
	FyW2S8QEqfe/IgHRdezxlBJvNckM7H2yYVFGsCulPPqjgxeBoaGHKW6cbzjXgZ3GmaLisvbxiQUVu
	3e6MppYStsORpjdsb63h57PXMU86vKgqL+x4eHkKhrO+gbgn/pPDtMkY6MAm0qzJroCc9fzQPlvlN
	4YXHO0IudjZFpmmd86u6VLpIiTa0B1AFSSvGEQ9ZlVs8hnpNnlc7Zp4GJXoJxEWzaJ0DL+nWjoDeF
	YoF3BRbz+7uyEZIo9X20In16wckt8zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeqNI-0004Se-4n; Sat, 30 May 2020 01:33:24 +0000
Received: from mail-il1-x133.google.com ([2607:f8b0:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeqN2-0004Mf-GA
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 01:33:10 +0000
Received: by mail-il1-x133.google.com with SMTP id t8so3788161ilm.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 29 May 2020 18:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=IQEXfUYY61OuGSktrDerblONwsQGwrvI5VzXHSSoyQU=;
 b=u5RGL/00TAxtSbYAWoPt1R5+ixaOqQJdlKNysOwnQoSrso3QuW/HryIW9HhJ5wJ1KB
 hBYtNGUorZ7PDavVc8uoMdxIxOgqw3jtyB1JCVZXfniYMMOZaStt+DbMLYdgsGYPTOAn
 SI75ce7wCHrs13Vq64xzxde/j083Q98IUQSq5HgBKqYRkFzlADgwAUOYACWfMvRbygQW
 ArVK7l9jYQmBgK3o8yBYpWO9WtSn2THlWnBGDe5J6E0fseC4mTuS3hZN5SNtYjBp8P9L
 x23uJm7IruFjTtKd1eI2mqNcG2oV+EQiqVcyw8oSZLKJNmeQxpPMUr5CqUxGZpdewLjA
 qdAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=IQEXfUYY61OuGSktrDerblONwsQGwrvI5VzXHSSoyQU=;
 b=pckm4gGMeRZkzKZbrlSQesfhd5cHT15m2pDe2HyGjbn0TGzQdV8F8Ls91xfxd1WXGW
 Rox62ei9DEazswDcg97MiVhhTJYfInKb4Ch/nPBSnFH20Po0VQ67U5j20Nbtzy8dSof+
 jnEyUaCFu5nJNx8GDTzvlE/tjO+ADOqbWlKzBGdXG/RcLzDTxYo6E3pHndNeTL5Wq+LT
 y4tBU02kwNuAeNJz365lmhQXHpwZmQv8+O7saFsxJkXeRkwNhXxKQV4sJMR+p86KHbdl
 Ohu4HPcZ374dGDCJ1GlK42n8G24UpRN2dItejFGiiyMCb3wxgsFnborVuj16BtGGsCsY
 csAQ==
X-Gm-Message-State: AOAM530D0xOM5UbiTtTXeVoDxvrE7VEfGYG2/bg7BX5lYgSmwiLbZYoC
 vuHhB0DeExbex3kghsXs6veOvamYShcbDTq/l36VxemSFJM=
X-Google-Smtp-Source: ABdhPJz94lSKeV5h0a+MTQT8HInfdESv4+aXLBO8EJOhR6hN1Oj8vYek5RwmZjxRqpiG6JaKovZBkoYwRtp+qLTs7d0=
X-Received: by 2002:a92:c809:: with SMTP id v9mr10154276iln.209.1590802385826; 
 Fri, 29 May 2020 18:33:05 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Bailey <danielb@meshplusplus.com>
Date: Fri, 29 May 2020 18:32:55 -0700
Message-ID: <CABzx=O0AbY5mRN0NiPHdr36OyEGduczpzDrYXfehCkTvMKRvqQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_183308_542451_3641912A 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:133 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 1/2] procd: add service instance watchdog
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
Content-Type: multipart/mixed; boundary="===============1550402486325222831=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1550402486325222831==
Content-Type: multipart/alternative; boundary="0000000000001d8d1a05a6d38b69"

--0000000000001d8d1a05a6d38b69
Content-Type: text/plain; charset="UTF-8"

From: Daniel Bailey <danielb@meshplusplus.com>
Date: Fri, 29 May 2020 17:37:25 -0700
Subject: [PATCH] procd: add service instance watchdog

Added instance watchdog which will eventually either terminate
or respawn an instance depending on the instance respawn setting.

Added service ubus method 'watchdog' which services the watchdog
timer and allows update of the instance watchdog mode instance.

Three modes: disabled, passive, active. Presently, only disabled
and passive modes are implemented.

Disabled: cancels watchdog timer set for a given instance.

Passive: sets a instance timer which must be serviced or the
instance will be stopped/restarted depending upon the instance
respawn value when the timer expires.

Active (to be implemented): requires an additional service 'endpoint'
parameter. Upon watchdog timer expiry, procd will query the endpoint
to determine whether the instance is alive. If the instance does not
answer, procd will terminate or respawn the instance depending on
the instance respawn setting.

Signed-off-by: Daniel Bailey <danielb@meshplusplus.com>
---
 service/instance.c | 68 ++++++++++++++++++++++++++++++++++++++++++++++
 service/instance.h | 15 ++++++++++
 service/service.c  | 68 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 151 insertions(+)

diff --git a/service/instance.c b/service/instance.c
index 142208a..8560a95 100644
--- a/service/instance.c
+++ b/service/instance.c
@@ -65,6 +65,7 @@ enum {
  INSTANCE_ATTR_EXTROOT,
  INSTANCE_ATTR_OVERLAYDIR,
  INSTANCE_ATTR_TMPOVERLAYSIZE,
+ INSTANCE_ATTR_WATCHDOG,
  __INSTANCE_ATTR_MAX
 };

@@ -95,6 +96,7 @@ static const struct blobmsg_policy
instance_attr[__INSTANCE_ATTR_MAX] = {
  [INSTANCE_ATTR_EXTROOT] = { "extroot", BLOBMSG_TYPE_STRING },
  [INSTANCE_ATTR_OVERLAYDIR] = { "overlaydir", BLOBMSG_TYPE_STRING },
  [INSTANCE_ATTR_TMPOVERLAYSIZE] = { "tmpoverlaysize", BLOBMSG_TYPE_STRING
},
+ [INSTANCE_ATTR_WATCHDOG] = { "watchdog", BLOBMSG_TYPE_ARRAY },
 };

 enum {
@@ -546,6 +548,11 @@ instance_start(struct service_instance *in)
  fcntl(epipe[0], F_SETFD, FD_CLOEXEC);
  }

+ if (in->watchdog.mode != INSTANCE_WATCHDOG_MODE_DISABLED) {
+ uloop_timeout_set(&in->watchdog.timeout, in->watchdog.freq * 1000);
+ DEBUG(2, "Started instance %s::%s watchdog timer : timeout = %d\n",
in->srv->name, in->name, in->watchdog.freq);
+ }
+
  service_event("instance.start", in->srv->name, in->name);
 }

@@ -693,6 +700,7 @@ instance_exit(struct uloop_process *p, int ret)

  in->exit_code = instance_exit_code(ret);
  uloop_timeout_cancel(&in->timeout);
+ uloop_timeout_cancel(&in->watchdog.timeout);
  service_event("instance.stop", in->srv->name, in->name);

  if (in->halt) {
@@ -752,6 +760,19 @@ instance_restart(struct service_instance *in)
  uloop_timeout_set(&in->timeout, in->term_timeout * 1000);
 }

+static void
+instance_watchdog(struct uloop_timeout *t)
+{
+ struct service_instance *in = container_of(t, struct service_instance,
watchdog.timeout);
+
+ DEBUG(3, "instance %s::%s watchdog timer expired\n", in->srv->name,
in->name);
+
+ if (in->respawn)
+ instance_restart(in);
+ else
+ instance_stop(in, true);
+}
+
 static bool string_changed(const char *a, const char *b)
 {
  return !((!a && !b) || (a && b && !strcmp(a, b)));
@@ -817,6 +838,12 @@ instance_config_changed(struct service_instance *in,
struct service_instance *in
  if (!blobmsg_list_equal(&in->errors, &in_new->errors))
  return true;

+ if (in->watchdog.mode != in_new->watchdog.mode)
+ return true;
+
+ if (in->watchdog.freq != in_new->watchdog.freq)
+ return true;
+
  return false;
 }

@@ -1170,6 +1197,36 @@ instance_config_parse(struct service_instance *in)
  DEBUG(3, "unknown syslog facility '%s' given, using default
(LOG_DAEMON)\n", blobmsg_get_string(tb[INSTANCE_ATTR_FACILITY]));
  }

+ if (tb[INSTANCE_ATTR_WATCHDOG]) {
+ int i = 0;
+ uint32_t vals[2] = { 0, 30 };
+
+ blobmsg_for_each_attr(cur2, tb[INSTANCE_ATTR_WATCHDOG], rem) {
+ if (i >= 2)
+ break;
+
+ vals[i] = atoi(blobmsg_get_string(cur2));
+ i++;
+ }
+
+ // TODO(danielb): change mode integers to strings (0 = disabled, 1 =
passive, 2 = active)
+ if (vals[0] >= 0 && vals[0] < __INSTANCE_WATCHDOG_MODE_MAX) {
+ in->watchdog.mode = vals[0];
+ DEBUG(3, "setting watchdog mode (%d)\n", vals[0]);
+ } else {
+ in->watchdog.mode = 0;
+ DEBUG(3, "unknown watchdog mode (%d) given, using default (0)\n",
vals[0]);
+ }
+
+ if (vals[1] > 0) {
+ in->watchdog.freq = vals[1];
+ DEBUG(3, "setting watchdog timeout (%d)\n", vals[0]);
+ } else {
+ in->watchdog.freq = 30;
+ DEBUG(3, "invalid watchdog timeout (%d) given, using default (30)\n",
vals[1]);
+ }
+ }
+
  return true;
 }

@@ -1255,6 +1312,7 @@ instance_free(struct service_instance *in)
  instance_free_stdio(in);
  uloop_process_delete(&in->proc);
  uloop_timeout_cancel(&in->timeout);
+ uloop_timeout_cancel(&in->watchdog.timeout);
  trigger_del(in);
  watch_del(in);
  instance_config_cleanup(in);
@@ -1308,6 +1366,9 @@ instance_init(struct service_instance *in, struct
service *s, struct blob_attr *
  blobmsg_list_simple_init(&in->limits);
  blobmsg_list_simple_init(&in->errors);
  blobmsg_list_simple_init(&in->jail.mount);
+
+ in->watchdog.timeout.cb = instance_watchdog;
+
  in->valid = instance_config_parse(in);
 }

@@ -1425,5 +1486,12 @@ void instance_dump(struct blob_buf *b, struct
service_instance *in, int verbose)
  if (verbose && in->trigger)
  blobmsg_add_blob(b, in->trigger);

+ if (in->watchdog.mode != INSTANCE_WATCHDOG_MODE_DISABLED) {
+ void *r = blobmsg_open_table(b, "watchdog");
+ blobmsg_add_u32(b, "mode", in->watchdog.mode);
+ blobmsg_add_u32(b, "timeout", in->watchdog.freq);
+ blobmsg_close_table(b, r);
+ }
+
  blobmsg_close_table(b, i);
 }
diff --git a/service/instance.h b/service/instance.h
index 4400cd4..590f931 100644
--- a/service/instance.h
+++ b/service/instance.h
@@ -23,6 +23,19 @@
 #define RESPAWN_ERROR (5 * 60)
 #define SIGNALLED_OFFSET 128

+typedef enum instance_watchdog {
+ INSTANCE_WATCHDOG_MODE_DISABLED,
+ INSTANCE_WATCHDOG_MODE_PASSIVE,
+ INSTANCE_WATCHDOG_MODE_ACTIVE,
+ __INSTANCE_WATCHDOG_MODE_MAX,
+} instance_watchdog_mode_t;
+
+struct watchdog {
+ instance_watchdog_mode_t mode;
+ uint32_t freq;
+ struct uloop_timeout timeout;
+};
+
 struct jail {
  bool procfs;
  bool sysfs;
@@ -94,6 +107,8 @@ struct service_instance {
  struct blobmsg_list file;
  struct blobmsg_list limits;
  struct blobmsg_list errors;
+
+ struct watchdog watchdog;
 };

 void instance_start(struct service_instance *in);
diff --git a/service/service.c b/service/service.c
index fcf0215..d9249a3 100644
--- a/service/service.c
+++ b/service/service.c
@@ -727,6 +727,73 @@ service_get_data(struct ubus_context *ctx, struct
ubus_object *obj,
  return 0;
 }

+enum {
+ SERVICE_WATCHDOG_MODE,
+ SERVICE_WATCHDOG_TIMEOUT,
+ SERVICE_WATCHDOG_NAME,
+ SERVICE_WATCHDOG_INSTANCE,
+ __SERVICE_WATCHDOG_MAX,
+};
+
+static const struct blobmsg_policy
service_watchdog_policy[__SERVICE_WATCHDOG_MAX] = {
+ [SERVICE_WATCHDOG_MODE] = { "mode", BLOBMSG_TYPE_INT32 },
+ [SERVICE_WATCHDOG_NAME] = { "name", BLOBMSG_TYPE_STRING },
+ [SERVICE_WATCHDOG_TIMEOUT] = { "timeout", BLOBMSG_TYPE_INT32 },
+ [SERVICE_WATCHDOG_INSTANCE] = { "instance", BLOBMSG_TYPE_STRING },
+};
+
+static int
+service_handle_watchdog(struct ubus_context *ctx, struct ubus_object *obj,
+    struct ubus_request_data *req, const char *method,
+    struct blob_attr *msg)
+{
+ struct blob_attr *tb[__SERVICE_WATCHDOG_MAX] = {0};
+ struct service *s;
+ struct blob_attr *cur;
+ struct service_instance *in;
+
+ blobmsg_parse(service_watchdog_policy, __SERVICE_WATCHDOG_MAX, tb,
blobmsg_data(msg), blobmsg_data_len(msg));
+ cur = tb[SERVICE_WATCHDOG_NAME];
+ if (!cur)
+ return UBUS_STATUS_NOT_FOUND;
+
+ s = avl_find_element(&services, blobmsg_data(cur), s, avl);
+ if (!s)
+ return UBUS_STATUS_NOT_FOUND;
+
+ cur = tb[SERVICE_WATCHDOG_INSTANCE];
+ if (!cur)
+ return UBUS_STATUS_NOT_FOUND;
+
+ in = vlist_find(&s->instances, blobmsg_data(cur), in, node);
+ if (!in) {
+ ERROR("instance %s not found\n", blobmsg_get_string(cur));
+ return UBUS_STATUS_NOT_FOUND;
+ }
+
+ // TODO(danielb): change mode from u32 to string (0 = disabled, 1 =
passive, 2 = active)
+ if (tb[SERVICE_WATCHDOG_MODE])
+ in->watchdog.mode = blobmsg_get_u32(tb[SERVICE_WATCHDOG_MODE]);
+
+ if (tb[SERVICE_WATCHDOG_TIMEOUT])
+ in->watchdog.freq = blobmsg_get_u32(tb[SERVICE_WATCHDOG_TIMEOUT]);
+
+ if (in->watchdog.mode == INSTANCE_WATCHDOG_MODE_DISABLED)
+ uloop_timeout_cancel(&in->watchdog.timeout);
+ else
+ uloop_timeout_set(&in->watchdog.timeout, in->watchdog.freq * 1000);
+
+ blob_buf_init(&b, 0);
+ blobmsg_add_string(&b, "name",
blobmsg_get_string(tb[SERVICE_WATCHDOG_NAME]));
+ blobmsg_add_string(&b, "instance",
blobmsg_get_string(tb[SERVICE_WATCHDOG_INSTANCE]));
+ blobmsg_add_u32(&b, "mode", in->watchdog.mode);
+ blobmsg_add_u32(&b, "timeout", in->watchdog.freq);
+
+ ubus_send_reply(ctx, req, b.head);
+
+ return UBUS_STATUS_OK;
+}
+
 static int
 container_handle_console(struct ubus_context *ctx, struct ubus_object *obj,
  struct ubus_request_data *req, const char *method,
@@ -797,6 +864,7 @@ static struct ubus_method main_object_methods[] = {
  UBUS_METHOD("validate", service_handle_validate, validate_policy),
  UBUS_METHOD("get_data", service_get_data, get_data_policy),
  UBUS_METHOD("state", service_handle_state, service_state_attrs),
+ UBUS_METHOD("watchdog", service_handle_watchdog, service_watchdog_policy),
 };

 static struct ubus_object_type main_object_type =
--
2.25.1

--0000000000001d8d1a05a6d38b69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><span><div dir=3D"ltr" style=3D"margi=
n-left:0pt" align=3D"left"><span><div dir=3D"ltr" style=3D"margin-left:0pt"=
 align=3D"left">From: Daniel Bailey &lt;<a href=3D"mailto:danielb@meshplusp=
lus.com">danielb@meshplusplus.com</a>&gt;<br>Date: Fri, 29 May 2020 17:37:2=
5 -0700<br>Subject: [PATCH] procd: add service instance watchdog<br><br>Add=
ed instance watchdog which will eventually either terminate<br>or respawn a=
n instance depending on the instance respawn setting.<br><br>Added service =
ubus method &#39;watchdog&#39; which services the watchdog<br>timer and all=
ows update of the instance watchdog mode instance.<br><br>Three modes: disa=
bled, passive, active. Presently, only disabled<br>and passive modes are im=
plemented.<br><br>Disabled: cancels watchdog timer set for a given instance=
.<br><br>Passive: sets a instance timer which must be serviced or the<br>in=
stance will be stopped/restarted depending upon the instance<br>respawn val=
ue when the timer expires.<br><br>Active (to be implemented): requires an a=
dditional service &#39;endpoint&#39;<br>parameter. Upon watchdog timer expi=
ry, procd will query the endpoint<br>to determine whether the instance is a=
live. If the instance does not<br>answer, procd will terminate or respawn t=
he instance depending on<br>the instance respawn setting.<br><br>Signed-off=
-by: Daniel Bailey &lt;<a href=3D"mailto:danielb@meshplusplus.com">danielb@=
meshplusplus.com</a>&gt;<br>---<br>=C2=A0service/instance.c | 68 ++++++++++=
++++++++++++++++++++++++++++++++++++<br>=C2=A0service/instance.h | 15 +++++=
+++++<br>=C2=A0service/service.c =C2=A0| 68 +++++++++++++++++++++++++++++++=
+++++++++++++++<br>=C2=A03 files changed, 151 insertions(+)<br><br>diff --g=
it a/service/instance.c b/service/instance.c<br>index 142208a..8560a95 1006=
44<br>--- a/service/instance.c<br>+++ b/service/instance.c<br>@@ -65,6 +65,=
7 @@ enum {<br>=C2=A0	INSTANCE_ATTR_EXTROOT,<br>=C2=A0	INSTANCE_ATTR_OVERLA=
YDIR,<br>=C2=A0	INSTANCE_ATTR_TMPOVERLAYSIZE,<br>+	INSTANCE_ATTR_WATCHDOG,<=
br>=C2=A0	__INSTANCE_ATTR_MAX<br>=C2=A0};<br><br>@@ -95,6 +96,7 @@ static c=
onst struct blobmsg_policy instance_attr[__INSTANCE_ATTR_MAX] =3D {<br>=C2=
=A0	[INSTANCE_ATTR_EXTROOT] =3D { &quot;extroot&quot;, BLOBMSG_TYPE_STRING =
},<br>=C2=A0	[INSTANCE_ATTR_OVERLAYDIR] =3D { &quot;overlaydir&quot;, BLOBM=
SG_TYPE_STRING },<br>=C2=A0	[INSTANCE_ATTR_TMPOVERLAYSIZE] =3D { &quot;tmpo=
verlaysize&quot;, BLOBMSG_TYPE_STRING },<br>+	[INSTANCE_ATTR_WATCHDOG] =3D =
{ &quot;watchdog&quot;, BLOBMSG_TYPE_ARRAY },<br>=C2=A0};<br><br>=C2=A0enum=
 {<br>@@ -546,6 +548,11 @@ instance_start(struct service_instance *in)<br>=
=C2=A0		fcntl(epipe[0], F_SETFD, FD_CLOEXEC);<br>=C2=A0	}<br><br>+	if (in-&=
gt;watchdog.mode !=3D INSTANCE_WATCHDOG_MODE_DISABLED) {<br>+		uloop_timeou=
t_set(&amp;in-&gt;watchdog.timeout, in-&gt;watchdog.freq * 1000);<br>+		DEB=
UG(2, &quot;Started instance %s::%s watchdog timer : timeout =3D %d\n&quot;=
, in-&gt;srv-&gt;name, in-&gt;name, in-&gt;watchdog.freq);<br>+	}<br>+<br>=
=C2=A0	service_event(&quot;instance.start&quot;, in-&gt;srv-&gt;name, in-&g=
t;name);<br>=C2=A0}<br><br>@@ -693,6 +700,7 @@ instance_exit(struct uloop_p=
rocess *p, int ret)<br><br>=C2=A0	in-&gt;exit_code =3D instance_exit_code(r=
et);<br>=C2=A0	uloop_timeout_cancel(&amp;in-&gt;timeout);<br>+	uloop_timeou=
t_cancel(&amp;in-&gt;watchdog.timeout);<br>=C2=A0	service_event(&quot;insta=
nce.stop&quot;, in-&gt;srv-&gt;name, in-&gt;name);<br><br>=C2=A0	if (in-&gt=
;halt) {<br>@@ -752,6 +760,19 @@ instance_restart(struct service_instance *=
in)<br>=C2=A0	uloop_timeout_set(&amp;in-&gt;timeout, in-&gt;term_timeout * =
1000);<br>=C2=A0}<br><br>+static void<br>+instance_watchdog(struct uloop_ti=
meout *t)<br>+{<br>+	struct service_instance *in =3D container_of(t, struct=
 service_instance, watchdog.timeout);<br>+<br>+	DEBUG(3, &quot;instance %s:=
:%s watchdog timer expired\n&quot;, in-&gt;srv-&gt;name, in-&gt;name);<br>+=
<br>+	if (in-&gt;respawn)<br>+		instance_restart(in);<br>+	else<br>+		insta=
nce_stop(in, true);<br>+}<br>+<br>=C2=A0static bool string_changed(const ch=
ar *a, const char *b)<br>=C2=A0{<br>=C2=A0	return !((!a &amp;&amp; !b) || (=
a &amp;&amp; b &amp;&amp; !strcmp(a, b)));<br>@@ -817,6 +838,12 @@ instance=
_config_changed(struct service_instance *in, struct service_instance *in<br=
>=C2=A0	if (!blobmsg_list_equal(&amp;in-&gt;errors, &amp;in_new-&gt;errors)=
)<br>=C2=A0		return true;<br><br>+	if (in-&gt;watchdog.mode !=3D in_new-&gt=
;watchdog.mode)<br>+		return true;<br>+<br>+	if (in-&gt;watchdog.freq !=3D =
in_new-&gt;watchdog.freq)<br>+		return true;<br>+<br>=C2=A0	return false;<b=
r>=C2=A0}<br><br>@@ -1170,6 +1197,36 @@ instance_config_parse(struct servic=
e_instance *in)<br>=C2=A0			DEBUG(3, &quot;unknown syslog facility &#39;%s&=
#39; given, using default (LOG_DAEMON)\n&quot;, blobmsg_get_string(tb[INSTA=
NCE_ATTR_FACILITY]));<br>=C2=A0	}<br><br>+	if (tb[INSTANCE_ATTR_WATCHDOG]) =
{<br>+		int i =3D 0;<br>+		uint32_t vals[2] =3D { 0, 30 };<br>+<br>+		blobm=
sg_for_each_attr(cur2, tb[INSTANCE_ATTR_WATCHDOG], rem) {<br>+			if (i &gt;=
=3D 2)<br>+				break;<br>+<br>+			vals[i] =3D atoi(blobmsg_get_string(cur2)=
);<br>+			i++;<br>+		}<br>+<br>+		// TODO(danielb): change mode integers to=
 strings (0 =3D disabled, 1 =3D passive, 2 =3D active)<br>+		if (vals[0] &g=
t;=3D 0 &amp;&amp; vals[0] &lt; __INSTANCE_WATCHDOG_MODE_MAX) {<br>+			in-&=
gt;watchdog.mode =3D vals[0];<br>+			DEBUG(3, &quot;setting watchdog mode (=
%d)\n&quot;, vals[0]);<br>+		} else {<br>+			in-&gt;watchdog.mode =3D 0;<br=
>+			DEBUG(3, &quot;unknown watchdog mode (%d) given, using default (0)\n&q=
uot;, vals[0]);<br>+		}<br>+<br>+		if (vals[1] &gt; 0) {<br>+			in-&gt;watc=
hdog.freq =3D vals[1];<br>+			DEBUG(3, &quot;setting watchdog timeout (%d)\=
n&quot;, vals[0]);<br>+		} else {<br>+			in-&gt;watchdog.freq =3D 30;<br>+	=
		DEBUG(3, &quot;invalid watchdog timeout (%d) given, using default (30)\n&=
quot;, vals[1]);<br>+		}<br>+	}<br>+<br>=C2=A0	return true;<br>=C2=A0}<br><=
br>@@ -1255,6 +1312,7 @@ instance_free(struct service_instance *in)<br>=C2=
=A0	instance_free_stdio(in);<br>=C2=A0	uloop_process_delete(&amp;in-&gt;pro=
c);<br>=C2=A0	uloop_timeout_cancel(&amp;in-&gt;timeout);<br>+	uloop_timeout=
_cancel(&amp;in-&gt;watchdog.timeout);<br>=C2=A0	trigger_del(in);<br>=C2=A0=
	watch_del(in);<br>=C2=A0	instance_config_cleanup(in);<br>@@ -1308,6 +1366,=
9 @@ instance_init(struct service_instance *in, struct service *s, struct b=
lob_attr *<br>=C2=A0	blobmsg_list_simple_init(&amp;in-&gt;limits);<br>=C2=
=A0	blobmsg_list_simple_init(&amp;in-&gt;errors);<br>=C2=A0	blobmsg_list_si=
mple_init(&amp;in-&gt;jail.mount);<br>+<br>+	in-&gt;watchdog.timeout.cb =3D=
 instance_watchdog;<br>+<br>=C2=A0	in-&gt;valid =3D instance_config_parse(i=
n);<br>=C2=A0}<br><br>@@ -1425,5 +1486,12 @@ void instance_dump(struct blob=
_buf *b, struct service_instance *in, int verbose)<br>=C2=A0	if (verbose &a=
mp;&amp; in-&gt;trigger)<br>=C2=A0		blobmsg_add_blob(b, in-&gt;trigger);<br=
><br>+	if (in-&gt;watchdog.mode !=3D INSTANCE_WATCHDOG_MODE_DISABLED) {<br>=
+		void *r =3D blobmsg_open_table(b, &quot;watchdog&quot;);<br>+		blobmsg_a=
dd_u32(b, &quot;mode&quot;, in-&gt;watchdog.mode);<br>+		blobmsg_add_u32(b,=
 &quot;timeout&quot;, in-&gt;watchdog.freq);<br>+		blobmsg_close_table(b, r=
);<br>+	}<br>+<br>=C2=A0	blobmsg_close_table(b, i);<br>=C2=A0}<br>diff --gi=
t a/service/instance.h b/service/instance.h<br>index 4400cd4..590f931 10064=
4<br>--- a/service/instance.h<br>+++ b/service/instance.h<br>@@ -23,6 +23,1=
9 @@<br>=C2=A0#define RESPAWN_ERROR	(5 * 60)<br>=C2=A0#define SIGNALLED_OFF=
SET 128<br><br>+typedef enum instance_watchdog {<br>+	INSTANCE_WATCHDOG_MOD=
E_DISABLED,<br>+	INSTANCE_WATCHDOG_MODE_PASSIVE,<br>+	INSTANCE_WATCHDOG_MOD=
E_ACTIVE,<br>+	__INSTANCE_WATCHDOG_MODE_MAX,<br>+} instance_watchdog_mode_t=
;<br>+<br>+struct watchdog {<br>+	instance_watchdog_mode_t mode;<br>+	uint3=
2_t freq;<br>+	struct uloop_timeout timeout;<br>+};<br>+<br>=C2=A0struct ja=
il {<br>=C2=A0	bool procfs;<br>=C2=A0	bool sysfs;<br>@@ -94,6 +107,8 @@ str=
uct service_instance {<br>=C2=A0	struct blobmsg_list file;<br>=C2=A0	struct=
 blobmsg_list limits;<br>=C2=A0	struct blobmsg_list errors;<br>+<br>+	struc=
t watchdog watchdog;<br>=C2=A0};<br><br>=C2=A0void instance_start(struct se=
rvice_instance *in);<br>diff --git a/service/service.c b/service/service.c<=
br>index fcf0215..d9249a3 100644<br>--- a/service/service.c<br>+++ b/servic=
e/service.c<br>@@ -727,6 +727,73 @@ service_get_data(struct ubus_context *c=
tx, struct ubus_object *obj,<br>=C2=A0	return 0;<br>=C2=A0}<br><br>+enum {<=
br>+	SERVICE_WATCHDOG_MODE,<br>+	SERVICE_WATCHDOG_TIMEOUT,<br>+	SERVICE_WAT=
CHDOG_NAME,<br>+	SERVICE_WATCHDOG_INSTANCE,<br>+	__SERVICE_WATCHDOG_MAX,<br=
>+};<br>+<br>+static const struct blobmsg_policy service_watchdog_policy[__=
SERVICE_WATCHDOG_MAX] =3D {<br>+	[SERVICE_WATCHDOG_MODE] =3D { &quot;mode&q=
uot;, BLOBMSG_TYPE_INT32 },<br>+	[SERVICE_WATCHDOG_NAME] =3D { &quot;name&q=
uot;, BLOBMSG_TYPE_STRING },<br>+	[SERVICE_WATCHDOG_TIMEOUT] =3D { &quot;ti=
meout&quot;, BLOBMSG_TYPE_INT32 },<br>+	[SERVICE_WATCHDOG_INSTANCE] =3D { &=
quot;instance&quot;, BLOBMSG_TYPE_STRING },<br>+};<br>+<br>+static int<br>+=
service_handle_watchdog(struct ubus_context *ctx, struct ubus_object *obj,<=
br>+		 =C2=A0 =C2=A0struct ubus_request_data *req, const char *method,<br>+=
		 =C2=A0 =C2=A0struct blob_attr *msg)<br>+{<br>+	struct blob_attr *tb[__SE=
RVICE_WATCHDOG_MAX] =3D {0};<br>+	struct service *s;<br>+	struct blob_attr =
*cur;<br>+	struct service_instance *in;<br>+<br>+	blobmsg_parse(service_wat=
chdog_policy, __SERVICE_WATCHDOG_MAX, tb, blobmsg_data(msg), blobmsg_data_l=
en(msg));<br>+	cur =3D tb[SERVICE_WATCHDOG_NAME];<br>+	if (!cur)<br>+		retu=
rn UBUS_STATUS_NOT_FOUND;<br>+<br>+	s =3D avl_find_element(&amp;services, b=
lobmsg_data(cur), s, avl);<br>+	if (!s)<br>+		return UBUS_STATUS_NOT_FOUND;=
<br>+<br>+	cur =3D tb[SERVICE_WATCHDOG_INSTANCE];<br>+	if (!cur)<br>+		retu=
rn UBUS_STATUS_NOT_FOUND;<br>+<br>+	in =3D vlist_find(&amp;s-&gt;instances,=
 blobmsg_data(cur), in, node);<br>+	if (!in) {<br>+		ERROR(&quot;instance %=
s not found\n&quot;, blobmsg_get_string(cur));<br>+		return UBUS_STATUS_NOT=
_FOUND;<br>+	}<br>+<br>+	// TODO(danielb): change mode from u32 to string (=
0 =3D disabled, 1 =3D passive, 2 =3D active)<br>+	if (tb[SERVICE_WATCHDOG_M=
ODE])<br>+		in-&gt;watchdog.mode =3D blobmsg_get_u32(tb[SERVICE_WATCHDOG_MO=
DE]);<br>+<br>+	if (tb[SERVICE_WATCHDOG_TIMEOUT])<br>+		in-&gt;watchdog.fre=
q =3D blobmsg_get_u32(tb[SERVICE_WATCHDOG_TIMEOUT]);<br>+<br>+	if (in-&gt;w=
atchdog.mode =3D=3D INSTANCE_WATCHDOG_MODE_DISABLED)<br>+		uloop_timeout_ca=
ncel(&amp;in-&gt;watchdog.timeout);<br>+	else<br>+		uloop_timeout_set(&amp;=
in-&gt;watchdog.timeout, in-&gt;watchdog.freq * 1000);<br>+<br>+	blob_buf_i=
nit(&amp;b, 0);<br>+	blobmsg_add_string(&amp;b, &quot;name&quot;, blobmsg_g=
et_string(tb[SERVICE_WATCHDOG_NAME]));<br>+	blobmsg_add_string(&amp;b, &quo=
t;instance&quot;, blobmsg_get_string(tb[SERVICE_WATCHDOG_INSTANCE]));<br>+	=
blobmsg_add_u32(&amp;b, &quot;mode&quot;, in-&gt;watchdog.mode);<br>+	blobm=
sg_add_u32(&amp;b, &quot;timeout&quot;, in-&gt;watchdog.freq);<br>+<br>+	ub=
us_send_reply(ctx, req, b.head);<br>+<br>+	return UBUS_STATUS_OK;<br>+}<br>=
+<br>=C2=A0static int<br>=C2=A0container_handle_console(struct ubus_context=
 *ctx, struct ubus_object *obj,<br>=C2=A0			 struct ubus_request_data *req,=
 const char *method,<br>@@ -797,6 +864,7 @@ static struct ubus_method main_=
object_methods[] =3D {<br>=C2=A0	UBUS_METHOD(&quot;validate&quot;, service_=
handle_validate, validate_policy),<br>=C2=A0	UBUS_METHOD(&quot;get_data&quo=
t;, service_get_data, get_data_policy),<br>=C2=A0	UBUS_METHOD(&quot;state&q=
uot;, service_handle_state, service_state_attrs),<br>+	UBUS_METHOD(&quot;wa=
tchdog&quot;, service_handle_watchdog, service_watchdog_policy),<br>=C2=A0}=
;<br><br>=C2=A0static struct ubus_object_type main_object_type =3D<br>--<br=
>2.25.1<br><br></div></span><span></span></div></span></div></div></div>

--0000000000001d8d1a05a6d38b69--


--===============1550402486325222831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1550402486325222831==--

