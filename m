Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECD31BA4D9
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 15:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-Id:Date:Mime-Version:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=c51lKTVg6Z95i70qUwZULtskRxkJFuABuXWbFdzhXgI=; b=Udl
	BnISZb3Li+MQM007gvCO6eKrEoCx6iMp5M9tM9b/2FDDmROtCOL+Kr9dSvrPw19fL6FrmJHHD+it4
	NkRoN2Ag3ClTdN6axxjMNcXGG192hajI9M9GVfApDxN3EJsAGZbkxxkZAHs3/pPGiRn1o2NU/nmWb
	ilSnGxgGVqLIDrXz7Kg5CLLcagTLoNhsAFGCujyhCLB8Rsfu86RXXE6MVwX0Vto8IKnEX6PkK0rXY
	0Xtu/nUadRXz8XhgiM6eUUHUb6kIFU9iGGc8yfM0T7kOAQqTUHxoRrZOaVnXuduNOAgNbQPQrVAaQ
	dyGgYKrki43aF4q+z2PL0LpdfhbedAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT3xE-0000b4-Cq; Mon, 27 Apr 2020 13:37:48 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT3x5-0000a2-He
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 13:37:43 +0000
Received: from mail-wr1-f41.google.com ([209.85.221.41])
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <comrade.noshit@gmail.com>) id 1jT3x3-0005lH-2t
 for openwrt-devel@openwrt.org; Mon, 27 Apr 2020 09:37:37 -0400
Received: by mail-wr1-f41.google.com with SMTP id b11so20574557wrs.6
 for <openwrt-devel@openwrt.org>; Mon, 27 Apr 2020 06:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:date:subject:message-id
 :to; bh=y0PMtlJ1FKIcTwPnYtTQNlLFo1c4bufAAeQnO2gk6hI=;
 b=WFZVA8fj5IpaBRdhnxMywEX2DJNN3+iEP5SS8b8OSywLGtRxgOPT/yrcrOhFduQ3AO
 lvnk2MgiowlM1UvtkdeF9M7+bcgO9WNK3YvT4LbFFhJyNHKat+t8yZsnvVaSA+zJ2Q6+
 UvedoKIQ8nh0AQpB2Hh456F3KLlSvmYK29O8FmCry3KxACR647IMXeKVKoNY1hGCVLok
 4imxlOFmaDYFq8McbxVnoWUmX18fz7Rs/nuKJJRdroHTeqHqtEAklbQkk6Db8ff3oakX
 1Amlh8Dg7rti4TtabIvUse9l6HkH2wkM4rR1T2SBcEwrdVYnh5iET18gbL7ivG/O0KL/
 96gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
 :subject:message-id:to;
 bh=y0PMtlJ1FKIcTwPnYtTQNlLFo1c4bufAAeQnO2gk6hI=;
 b=t+OpEWduH28y1DNaqoQKqB+oXheF/SYsq389avOtOSHzhQj+Iy+ICB963vm9xNroyQ
 n0nGoEy3lTCxexK5x4OE2MYN0AjKo+Xgh++JHwjiNJw1gskz1h4m4MfEW7SMr+0o/cqX
 SUApmNjbq0HfnTT02sJRVLJoB/SztdARii2x5tQfmB0KTOLRmL12sUWnujl98c6BBuT3
 Ny2ld0Za/M3B+lSxlr/w4YCDgzshVnxJiNuzKBvKx+qmDgz3B5dvtSYE8iCgcFUA990I
 NPErxaPOxg2C4AhjQd/mrt7Z4nU98FndEKNYp/mA7OB5NR9eTcfhPy+gydjSr18mt/Ms
 KzaQ==
X-Gm-Message-State: AGi0Pub8zZo+zCf/FN885uipfRfyekQNkVPEP9XptdVkZ7CBJCom6idq
 Q7+rIhaKbxMs51IqGIpwH8hnfmgD
X-Google-Smtp-Source: APiQypIFn3h8YWgle2MOKuwNEvXrMYd7pP89d6LUOdxAWbSrt4A+1dbUcsHYegByKid9JiFmpaTsRA==
X-Received: by 2002:a2e:87d3:: with SMTP id v19mr13392191ljj.176.1587992781304; 
 Mon, 27 Apr 2020 06:06:21 -0700 (PDT)
Received: from ?IPv6:2a00:1fa2:2e6:26ab:b475:de98:b3b0:7e65?
 ([2a00:1fa2:2e6:26ab:b475:de98:b3b0:7e65])
 by smtp.gmail.com with ESMTPSA id 1sm10280506ljw.91.2020.04.27.06.06.19
 for <openwrt-devel@openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 06:06:19 -0700 (PDT)
From: Ilya Kuznetsov <comrade.noshit@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 27 Apr 2020 18:06:17 +0500
Message-Id: <973AD40C-C030-4698-A047-EEBF6315AF05@gmail.com>
To: openwrt-devel@openwrt.org
X-Mailer: iPhone Mail (17E262)
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview: I found a huge memory leak when SQM shaper is engaged on my
 MT7620N-powered router. It regards IPv6 operation only though. How to test:
 1. Obvious part: sqm-scripts package has to be installed, /etc/config/sqm
 has to be configured with shaper and cake or fq_codel qdisc enabled. 
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: umu.se]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (comrade.noshit[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76
 chars
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_063739_888645_8EE45076 
X-CRM114-Status: UNSURE (   5.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [comrade.noshit[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76
 chars
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] OpenWRT 19.07.2 SQM memory leak
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
Content-Type: multipart/mixed; boundary="===============3841209690367165864=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============3841209690367165864==
Content-Type: multipart/alternative; boundary=Apple-Mail-9DB414B9-DE30-46DC-86C4-B739467FBA4D
Content-Transfer-Encoding: 7bit


--Apple-Mail-9DB414B9-DE30-46DC-86C4-B739467FBA4D
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I found a huge memory leak when SQM shaper is engaged on my MT7620N-powered r=
outer. It regards IPv6 operation only though.

How to test:

1. Obvious part: sqm-scripts package has to be installed, /etc/config/sqm ha=
s to be configured with shaper and cake or fq_codel qdisc enabled.

2. Your connection has to support IPv6 because memory starts leaking only wi=
th IPv6 TCP transfers (I have tested downlink, not sure about uplink).

3. You need to ssh to your router and monitor system resources with top -d 1=
 (for better resolution).

4. Now it's time to engage some huge file download straight to /dev/null. De=
bian 10 image will do. Run wget -6 https://caesar.ftp.acc.umu.se/debian-cd/c=
urrent/amd64/iso-cd/debian-10.3.0-amd64-netinst.iso -O /dev/null.

5. Watch your router memory drains to zero. Notice that ksoftirqd process is=
 suspiciously active (about 19% CPU, it's quite untypical).

6. Try wget with -4 flag to confirm that only IPv6 operation is affected.

What I figured at the moment:

1. UDP transmission are not affected. Torrents work just fine with IPv6 peer=
s, no leaks.

2. Utility doesn't matter. I tried curl, few browsers, no difference.

3. It is related to shaper because if you set it to zero in configuration, e=
ffectively disabling it, leak stops.

4. IPv4 downloads doesn't cause the leak.

5. Kernel doesn't show what process misbehaves with memory.

I have no knowledge of what exactly causes the leak apart from it having som=
ething to do with shaper function. I don't have any means of using a debugge=
r on the router since it's quite restricted on resources.

P.S. My WAN connection is a USB LTE modem.=

--Apple-Mail-9DB414B9-DE30-46DC-86C4-B739467FBA4D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><p style=3D"box-sizing: border-box; word-wr=
ap: break-word; word-break: break-word; margin: 0px 0px 10px; caret-color: r=
gb(26, 26, 27); color: rgb(26, 26, 27); font-family: -apple-system, system-u=
i, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&qu=
ot;, Arial, sans-serif; font-size: 14px; -webkit-tap-highlight-color: rgba(0=
, 0, 0, 0); -webkit-text-size-adjust: 100%;">I found a huge memory leak when=
 SQM shaper is engaged on my MT7620N-powered router. It regards IPv6 operati=
on only though.</p><p style=3D"box-sizing: border-box; word-wrap: break-word=
; word-break: break-word; margin: 0px 0px 10px; caret-color: rgb(26, 26, 27)=
; color: rgb(26, 26, 27); font-family: -apple-system, system-ui, BlinkMacSys=
temFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sa=
ns-serif; font-size: 14px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -w=
ebkit-text-size-adjust: 100%;">How to test:</p><p style=3D"box-sizing: borde=
r-box; word-wrap: break-word; word-break: break-word; margin: 0px 0px 10px; c=
aret-color: rgb(26, 26, 27); color: rgb(26, 26, 27); font-family: -apple-sys=
tem, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helv=
etica Neue&quot;, Arial, sans-serif; font-size: 14px; -webkit-tap-highlight-=
color: rgba(0, 0, 0, 0); -webkit-text-size-adjust: 100%;">1. Obvious part: s=
qm-scripts package has to be installed, /etc/config/sqm has to be configured=
 with shaper and cake or fq_codel qdisc enabled.</p><p style=3D"box-sizing: b=
order-box; word-wrap: break-word; word-break: break-word; margin: 0px 0px 10=
px; caret-color: rgb(26, 26, 27); color: rgb(26, 26, 27); font-family: -appl=
e-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot=
;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; -webkit-tap-highl=
ight-color: rgba(0, 0, 0, 0); -webkit-text-size-adjust: 100%;">2. Your conne=
ction has to support IPv6 because memory starts leaking only with IPv6 TCP t=
ransfers (I have tested downlink, not sure about uplink).</p><p style=3D"box=
-sizing: border-box; word-wrap: break-word; word-break: break-word; margin: 0=
px 0px 10px; caret-color: rgb(26, 26, 27); color: rgb(26, 26, 27); font-fami=
ly: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Robo=
to, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; -webkit-=
tap-highlight-color: rgba(0, 0, 0, 0); -webkit-text-size-adjust: 100%;">3. Y=
ou need to ssh to your router and monitor system resources with top -d 1 (fo=
r better resolution).</p><p style=3D"box-sizing: border-box; word-wrap: brea=
k-word; word-break: break-word; margin: 0px 0px 10px; caret-color: rgb(26, 2=
6, 27); color: rgb(26, 26, 27); font-family: -apple-system, system-ui, Blink=
MacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Ari=
al, sans-serif; font-size: 14px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0=
); -webkit-text-size-adjust: 100%;">4. Now it's time to engage some huge fil=
e download straight to /dev/null. Debian 10 image will do. Run wget -6&nbsp;=
<a href=3D"https://caesar.ftp.acc.umu.se/debian-cd/current/amd64/iso-cd/debi=
an-10.3.0-amd64-netinst.iso" style=3D"box-sizing: border-box; color: rgb(58,=
 171, 255); text-decoration: none;">https://caesar.ftp.acc.umu.se/debian-cd/=
current/amd64/iso-cd/debian-10.3.0-amd64-netinst.iso</a>&nbsp;-O /dev/null.<=
/p><p style=3D"box-sizing: border-box; word-wrap: break-word; word-break: br=
eak-word; margin: 0px 0px 10px; caret-color: rgb(26, 26, 27); color: rgb(26,=
 26, 27); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;S=
egoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-s=
ize: 14px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-text-size-=
adjust: 100%;">5. Watch your router memory drains to zero. Notice that ksoft=
irqd process is suspiciously active (about 19% CPU, it's quite untypical).</=
p><p style=3D"box-sizing: border-box; word-wrap: break-word; word-break: bre=
ak-word; margin: 0px 0px 10px; caret-color: rgb(26, 26, 27); color: rgb(26, 2=
6, 27); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Seg=
oe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-siz=
e: 14px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-text-size-ad=
just: 100%;">6. Try wget with -4 flag to confirm that only IPv6 operation is=
 affected.</p><p style=3D"box-sizing: border-box; word-wrap: break-word; wor=
d-break: break-word; margin: 0px 0px 10px; caret-color: rgb(26, 26, 27); col=
or: rgb(26, 26, 27); font-family: -apple-system, system-ui, BlinkMacSystemFo=
nt, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-se=
rif; font-size: 14px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit=
-text-size-adjust: 100%;">What I figured at the moment:</p><p style=3D"box-s=
izing: border-box; word-wrap: break-word; word-break: break-word; margin: 0p=
x 0px 10px; caret-color: rgb(26, 26, 27); color: rgb(26, 26, 27); font-famil=
y: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Robot=
o, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; -webkit-t=
ap-highlight-color: rgba(0, 0, 0, 0); -webkit-text-size-adjust: 100%;">1. UD=
P transmission are not affected. Torrents work just fine with IPv6 peers, no=
 leaks.</p><p style=3D"box-sizing: border-box; word-wrap: break-word; word-b=
reak: break-word; margin: 0px 0px 10px; caret-color: rgb(26, 26, 27); color:=
 rgb(26, 26, 27); font-family: -apple-system, system-ui, BlinkMacSystemFont,=
 &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif=
; font-size: 14px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-te=
xt-size-adjust: 100%;">2. Utility doesn't matter. I tried curl, few browsers=
, no difference.</p><p style=3D"box-sizing: border-box; word-wrap: break-wor=
d; word-break: break-word; margin: 0px 0px 10px; caret-color: rgb(26, 26, 27=
); color: rgb(26, 26, 27); font-family: -apple-system, system-ui, BlinkMacSy=
stemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, s=
ans-serif; font-size: 14px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -=
webkit-text-size-adjust: 100%;">3. It is related to shaper because if you se=
t it to zero in configuration, effectively disabling it, leak stops.</p><p s=
tyle=3D"box-sizing: border-box; word-wrap: break-word; word-break: break-wor=
d; margin: 0px 0px 10px; caret-color: rgb(26, 26, 27); color: rgb(26, 26, 27=
); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI=
&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14=
px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-text-size-adjust:=
 100%;">4. IPv4 downloads doesn't cause the leak.</p><p style=3D"box-sizing:=
 border-box; word-wrap: break-word; word-break: break-word; margin: 0px 0px 1=
0px; caret-color: rgb(26, 26, 27); color: rgb(26, 26, 27); font-family: -app=
le-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quo=
t;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; -webkit-tap-high=
light-color: rgba(0, 0, 0, 0); -webkit-text-size-adjust: 100%;">5. Kernel do=
esn't show what process misbehaves with memory.</p><p style=3D"box-sizing: b=
order-box; word-wrap: break-word; word-break: break-word; margin: 0px 0px 10=
px; caret-color: rgb(26, 26, 27); color: rgb(26, 26, 27); font-family: -appl=
e-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot=
;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; -webkit-tap-highl=
ight-color: rgba(0, 0, 0, 0); -webkit-text-size-adjust: 100%;">I have no kno=
wledge of what exactly causes the leak apart from it having something to do w=
ith shaper function. I don't have any means of using a debugger on the route=
r since it's quite restricted on resources.</p><p style=3D"box-sizing: borde=
r-box; word-wrap: break-word; word-break: break-word; margin: 0px 0px 10px; c=
aret-color: rgb(26, 26, 27); color: rgb(26, 26, 27); font-family: -apple-sys=
tem, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helv=
etica Neue&quot;, Arial, sans-serif; font-size: 14px; -webkit-tap-highlight-=
color: rgba(0, 0, 0, 0); -webkit-text-size-adjust: 100%;">P.S. My WAN connec=
tion is a USB LTE modem.</p></body></html>=

--Apple-Mail-9DB414B9-DE30-46DC-86C4-B739467FBA4D--


--===============3841209690367165864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3841209690367165864==--

