Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AB298C5D
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 09:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9BgTnSgU0/vCpUn23621d5DSGwl8i4WgUi2Nq7WmDHk=; b=qLX
	rtxAAQvhBUkRxAj4U87Ny8mb91eYf6J8VVfHcZzLaUGTHeA0wH8tvy2yt+DLGItp0y5sOV3w3Jw+N
	Ex+m1XoUMZsZgCro1+DHVFnUoigcYM1tlxfBdgp5bBZ41FyiNYoKQ9T7c10FoApGoJb/l9i27Y9fI
	u2qpvBvBIXVt1oJ4I8x6dSoJ4XWAMIF9M3bRUK5p0OYfvdmMghl2hygPpN2Ix9WXdaCmBnUfNatWQ
	wVaTeZhe81R58+QPLA/dnoo409VVkBMhqAMNGRj3ublH7l8QQux4HHyZfgw0g0CdWuZTTMCGvmUWT
	zZHK1w3L/Ag71SNw464sKyHR+jXtouw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0hPc-0003vw-Sa; Thu, 22 Aug 2019 07:21:36 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0hPM-0003vb-Hb
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 07:21:22 +0000
Received: by mail-ed1-x534.google.com with SMTP id f22so6479719edt.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 22 Aug 2019 00:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=w6cHa33wcrf/HQJkZ2zVOttV/sQlmBkBB6Ny+gUn72w=;
 b=S2Dh5o73BpRHgOeb8oKVAdce8FtQ8jg5SNdt11knbexblVZyBm/G1UPIzxXuYoRNJa
 7io1gKFLnqqpi6FAZeiFPyf8aZZUXn8EIw1VgM3gI2vtYj5QuLvgKlr+eGIKx+ibRXB5
 /3Sz+c5dYfthaOYXf/+5qMoAFSGU5XbDm9GZTM1Ldl6naleGGy5kc039D8QiE3DNdKay
 Q8iLLqAWNIayeVzPP4Gr6TCzlC+ctm7OKErtoVKhvlvSeT3AXA8sfjg39zz0dLW0ELms
 28/SJ5fh56v8wwNoQF4iCurOQOYMR7xOLGbMkfyktbtD1Sq8FiQaU9Pysew3PppacZHr
 63vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=w6cHa33wcrf/HQJkZ2zVOttV/sQlmBkBB6Ny+gUn72w=;
 b=VfSgB54e6Ps9tP5ZDu8ryUuOat5KtVvPo8C803L6bjjePA0UxTWA8FaJa1pq0WQxw8
 JBgltXG+KLx5ez8iDy+2V1RNA/mEnWsyuG2rlwe4JUi9H+1+y7q75x8CN9WdPGHItfXy
 nbFivsYb13M0NeQ4qSKOepR5z9apD0BOHoOJAYratzsssX3k90h3vnFwq54TPEE/JbmS
 QlI6ZP+oaZ42diRrxbeS5sc+z5s+iT1XH20ROyt41XUUQqOQB4FAGzmxC4PdbWg24EPt
 py7+0Tj1+ypgYxAzaeIMFQmWR3N0JkGoWvT+c8T6vzOZBqVzLKGLKH2S6vQ1zyQdtyS1
 yG1g==
X-Gm-Message-State: APjAAAXJlL9jYA4h23yP/cT1B4mol8EOkZfbnyNbKt7rCCtSKbe6NfX2
 OL6IceNrlHlfYdu6BfOv+XxhycoTeMz47kAjJ5c4DERt
X-Google-Smtp-Source: APXvYqzaBj3t34GKH04jJjS+fLjyrJW5VkH8/8T9bUjuIK2mOzI81vEYocps1uiPMloWQELM9ytP8SNBCwrnGDKYT+U=
X-Received: by 2002:a17:907:217c:: with SMTP id
 rl28mr33885814ejb.183.1566458478017; 
 Thu, 22 Aug 2019 00:21:18 -0700 (PDT)
MIME-Version: 1.0
From: pothuganti sridhar <pothuganti.sridhar@gmail.com>
Date: Thu, 22 Aug 2019 12:51:06 +0530
Message-ID: <CAFXV_9GFE_Sxfn_soyiTT9dG1_XVTGe9EJe5K-uvaFm1tvOmvg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_002120_612005_3BAB1EAE 
X-CRM114-Status: UNSURE (   5.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:534 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pothuganti.sridhar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Regarding UCI for multi-point GRE on OpenWRT
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
Content-Type: multipart/mixed; boundary="===============2465505112447902898=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2465505112447902898==
Content-Type: multipart/alternative; boundary="0000000000002343050590af8914"

--0000000000002343050590af8914
Content-Type: text/plain; charset="UTF-8"

Hello All,

I am trying to implement DMVPN with OpenWRT. That requires multipoint GRE
tunnels. In case of the multipoint GRE tunnel, the remote endpoint/peer
address will be resolved dynamically using NHRPD protocol/daemon.

I have gone through the GRE documentation at the following link.

https://openwrt.org/docs/guide-user/network/tunneling_interface_protocols

In the above documentation, it is mentioned that "peeraddr" is the must
require field.

Is anyone tried to create multipoint GRE using UCI?

To make it(peeraddr) optional field, what are the changes required?

Any points will be helpful.

Thanks in advance.

Regards,
Sridhar

--0000000000002343050590af8914
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>I am trying to implement DMV=
PN with OpenWRT. That requires multipoint GRE tunnels. In case of the multi=
point GRE tunnel, the remote endpoint/peer address will be resolved dynamic=
ally using NHRPD protocol/daemon.</div><div><br></div><div>I have gone thro=
ugh the GRE documentation at the following link.</div><div><br></div><div><=
a href=3D"https://openwrt.org/docs/guide-user/network/tunneling_interface_p=
rotocols">https://openwrt.org/docs/guide-user/network/tunneling_interface_p=
rotocols</a>=C2=A0</div><div>=C2=A0<br></div><div>In the above documentatio=
n, it is mentioned that &quot;<span style=3D"background-color:rgba(255,255,=
255,0.9);color:rgb(51,51,51);font-family:Consolas,&quot;Andale Mono WT&quot=
;,&quot;Andale Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Nimbus=
 Mono L&quot;,Monaco,&quot;Courier New&quot;,monospace;font-size:14px">peer=
addr</span>&quot; is the must require field.=C2=A0</div><div><br></div><div=
>Is anyone tried to create multipoint GRE using UCI?=C2=A0</div><div><br></=
div><div>To make it(<span style=3D"background-color:rgba(255,255,255,0.9);c=
olor:rgb(51,51,51);font-family:Consolas,&quot;Andale Mono WT&quot;,&quot;An=
dale Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Nimbus Mono L&qu=
ot;,Monaco,&quot;Courier New&quot;,monospace;font-size:14px">peeraddr</span=
>) optional field, what are the changes required?</div><div><br></div><div>=
Any points will be helpful.</div><div><br></div><div>Thanks in advance.</di=
v><div><br></div><div>Regards,</div><div>Sridhar</div></div>

--0000000000002343050590af8914--


--===============2465505112447902898==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2465505112447902898==--

