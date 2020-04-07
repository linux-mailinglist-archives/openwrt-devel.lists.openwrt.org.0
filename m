Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529911A0559
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 05:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ouJM9EZCNgbQgKdR6kaQaS0YCMKVL2cMySEgrnYgbgQ=; b=ddE
	cN1LFtAyKtoXEM/9NfpPl5ZVaXFB0XVfLld2kKLNtUlC24cVA0/T8I6vi8N9SXqIcCLf7ICCYNSp6
	Zx+CGlqecg7yJaQz5xb1vu81TPA+WTDPIy9yRQBYH/40ozdctZZ0TlR+2rbX2BmLLrur8J1maa/Zf
	bR3yoBWORxUXQbSk2OzlQTf+8V7cP9Fj2C3G26C1rXJ128mNMw6O5e3cMlE1ZfML4IsLBW1UpMwao
	l+QRzpcHPu+pf/R28y68PxgQfRTFhvFwxeqaP7IOmXSMoFJhmfxRO22hcmnu/CKOdKJDrJmOpwKOl
	WxTAczXrYdCQZAGZu0VZysuo1z2VL2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLf76-0007aZ-Ap; Tue, 07 Apr 2020 03:41:24 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLf6x-0007a4-ES
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 03:41:18 +0000
Received: by mail-yb1-xb44.google.com with SMTP id 204so1071430ybw.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 20:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=qK+rN4q/SUavv7t2VdijJcYhl2EvCmTeiW16htC/dLI=;
 b=Armz8Xt6gweLPwydZXGbdplpEOfEIbhTl/WHXGecQStmL9npwsmGjYkBd2Reyf7mny
 m2RiK10B4SpMDWdEUv7viRLAIxbqUGVKLIJdivjgAoFlyWkzJc37ELRCG/uA4MfqUr9q
 TtQvmRxvvgEtmChz7j6iq1gXXUB/8sZLDyiRZtBGNgRZyHhNtp8E/2W5JRnux6cmcCTd
 auXTCyHfc7njJflJ/cDseJIWUBjLa41TpUKhgU30Nz465AYJF9UZ0dZl9/Xk7rd5se4B
 /g3B2oJFH0YI11QuAMp3MOOe3DyrVSPAKZT7Nq/L+EyIhJaf4Rn9rRs4Hy+1Lm3zop1A
 OQjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=qK+rN4q/SUavv7t2VdijJcYhl2EvCmTeiW16htC/dLI=;
 b=kA65RPMmDpMeLCIP+84iTz1bTXwZLcPRSlPf0If+79q4z5xRCgHz4s1XZC0oeSW8UA
 rybiYxFeHFbu7ag6H0Cm4HHUr7Is0oKxAPvOqT9KsAfdo5R+X7C7giVA9NhIdk6mCTZG
 l2NMxmLrwjiPadzSpaxXTMs8GvT8jf3RzTFAsf3zvwEO5rUq2yWwvdA5u5lGxJ/MZDBj
 oabF+Am0bY4niStVGWCUjz0uBN//3TVxkb337GbCMxkWdP5ncN5l1bJSlzaHJiJaOhfb
 PsQ2lTMlBogE+bo9QoO3DS3v/BUe4fO33aGBF6ouzv1W1ZB4cMb0SR7tvrMh9T5yfQ4J
 nQ+A==
X-Gm-Message-State: AGi0PuayP0Bc6K+khfb+GgUVhHY2RxC6ivn8Pjt85AWAEHSft1rLrimh
 YrPyC/0Wg0uarqIa7AxZr9EEs6a+Fas97TT+47I=
X-Google-Smtp-Source: APiQypKUdGBT6fD292moSfc2lvYLH6JKav5teGbXT0VCkSrBqZNPGThJMQ9XnhIaYGZsy/ZEcebTmuplB6LpnyDa4wk=
X-Received: by 2002:a5b:109:: with SMTP id 9mr655949ybx.475.1586230873598;
 Mon, 06 Apr 2020 20:41:13 -0700 (PDT)
MIME-Version: 1.0
From: Sean Miller <seanmichaelmiller2014@gmail.com>
Date: Mon, 6 Apr 2020 20:41:02 -0700
Message-ID: <CAC1-_CGzcOD=jcLruncWwibjztDK2z6LotiMc2=6NoPa0wN0-g@mail.gmail.com>
To: john@phrozen.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_204115_507059_986340CD 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanmichaelmiller2014[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanmichaelmiller2014[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] Use ram overlay when restoring
 sysupgrade.tgz
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
Cc: nbd@openwrt.org, openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============2939206034561216454=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2939206034561216454==
Content-Type: multipart/alternative; boundary="000000000000c0afcc05a2ab2711"

--000000000000c0afcc05a2ab2711
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear John Crispin and Felix Fietkau,

*Description:* During the first boot following a sysupgrade, if the
rootfs_data
partition has not been formatted, the intended behavior is to mount a
temporary ram overlay filesystem, deferring the cleaning and formatting
of the rootfs_data partition and the switch to the jffs2 overlay until
later in the init sequence. If a sysupgrade call preserves a config across
the update (via sysupgrade.tgz), the jffs2 overlay is always immediately
mounted, regardless of whether or not the rootfs_data partition has
been formatted.

Launching the jffs2 overlay when the rootfs_data partition has not been
formatted blocks preinit_main for the duration of the formatting. This can
be fatal, especially on systems with large rootfs_data partitions.
Even on machines that can survive the preinit hang, the intermediate ram
overlay should be launched for consistency across boots.

This bug also causes the jffs2 driver to not clean up the first blocks
of rootfs_data used to store sysupgrade.tgz, leaving those blocks
to be cleaned before use during userspace run time.

*package name:* package/system/fstools

--- a/libfstools/volume.c
+++ b/libfstools/volume.c
@@ -12,11 +12,17 @@
  */

 #include <sys/mount.h>
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <fcntl.h>
 #include <stdio.h>
 #include <stdlib.h>

 #include =E2=80=9Clibfstools.h=E2=80=9D
 #include =E2=80=9Cvolume.h=E2=80=9D
+#include =E2=80=9Ccrc32.h=E2=80=9D
+
+#define CRC_BUF_LEN 4096

 static LIST_HEAD(drivers);

@@ -41,3 +47,96 @@ struct volume* volume_find(char *name)

    return NULL;
 }
+
+/*
+ * if we are using a jffs2 rootfs_data partition,
+ * parse sysupgrade.tgz from rootfs_data, and move it
+ * to the newly mounted RAM read-write root
+ */
+int volume_read_tar_rootfs_data(const char* tar_destination)
+{
+   int destination_fd;
+   char *read_buf;
+   char *crc_buf;
+   unsigned int bytes_crc =3D 0;
+   unsigned int bytes_read =3D 0;
+   unsigned int bytes_written =3D 0;
+   unsigned int total_bytes_read =3D 0;
+   unsigned int rootfs_data_ofs =3D 0;
+   __u32 tar_page_marker;
+   __u32 calculated_crc;
+   struct tar_file_header header;
+   struct volume *rootfs_data =3D volume_find(=E2=80=9Crootfs_data=E2=80=
=9D);
+
+   volume_init(rootfs_data);
+   volume_read(rootfs_data, &header, 0, sizeof(header));
+
+   rootfs_data_ofs =3D sizeof(header);
+   if(header.tar_file_marker =3D=3D 0xadddf111){
+       read_buf =3D malloc(rootfs_data->block_size);
+       if(read_buf){
+           destination_fd =3D open(tar_destination, O_RDWR | O_CREAT,
S_IRWXG);
+           if(destination_fd >=3D 0){
+               if(header.tar_file_size >=3D rootfs_data->block_size -
sizeof(header)){
+                   volume_read(rootfs_data, read_buf, rootfs_data_ofs,
rootfs_data->block_size - sizeof(header));
+                   bytes_read =3D rootfs_data->block_size - sizeof(header)=
;
+               }
+               else{
+                   volume_read(rootfs_data, read_buf, rootfs_data_ofs,
header.tar_file_size);
+                   bytes_read =3D header.tar_file_size;
+               }
+               total_bytes_read +=3D bytes_read;
+               rootfs_data_ofs +=3D bytes_read;
+               bytes_written =3D write(destination_fd, read_buf, bytes_rea=
d);
+               while(bytes_written !=3D header.tar_file_size &&
rootfs_data_ofs < rootfs_data->size){
+                   volume_read(rootfs_data, &tar_page_marker,
rootfs_data_ofs, sizeof(tar_page_marker));
+                   rootfs_data_ofs +=3D sizeof(tar_page_marker);
+                   if(tar_page_marker =3D=3D 0xadddf111){
+                       if(header.tar_file_size >=3D total_bytes_read +
rootfs_data->block_size - sizeof(tar_page_marker)){
+                           volume_read(rootfs_data, read_buf,
rootfs_data_ofs, rootfs_data->block_size - sizeof(header));
+                           bytes_read =3D rootfs_data->block_size -
sizeof(header);
+                       }
+                       else{
+                           volume_read(rootfs_data, read_buf,
rootfs_data_ofs, header.tar_file_size - total_bytes_read -
sizeof(tar_page_marker));
+                           bytes_read =3D header.tar_file_size -
total_bytes_read - sizeof(tar_page_marker);
+                       }
+                       total_bytes_read +=3D bytes_read;
+                       rootfs_data_ofs +=3D bytes_read;
+                       bytes_written +=3D write(destination_fd, read_buf,
bytes_read);
+                   }
+                   else{
+                       /* bad block, skip it */
+                       rootfs_data_ofs +=3D rootfs_data->block_size -
sizeof(tar_page_marker);
+                   }
+               }
+               free(read_buf);
+               read_buf =3D NULL;
+
+               /* crc check */
+               if(bytes_written){
+                   lseek(destination_fd, 0, SEEK_SET);
+                   crc_buf =3D malloc(CRC_BUF_LEN);
+                   if(crc_buf){
+                       bytes_crc =3D read(destination_fd, crc_buf,
CRC_BUF_LEN);
+                       calculated_crc =3D crc32(0, crc_buf, bytes_crc);
+                       while(bytes_crc){
+                           bytes_crc =3D read(destination_fd, crc_buf,
CRC_BUF_LEN);
+                           calculated_crc =3D crc32(calculated_crc, crc_bu=
f,
bytes_crc);
+                       }
+                       free(crc_buf);
+                       if(calculated_crc =3D=3D header.tar_file_crc){
+                           close(destination_fd);
+                           return 0;
+                       }
+                   }
+               }
+               /* uh oh... something went wrong */
+               close(destination_fd);
+               remove(tar_destination);
+           }
+           if(read_buf)
+               free(read_buf);
+       }
+   }
+   return -1;
+}
--- a/libfstools/volume.h
+++ b/libfstools/volume.h
@@ -42,6 +42,13 @@ struct driver {
    volume_erase_all_t  erase_all;
 };

+struct tar_file_header {
+   __u32 deadcode;
+   __u32 tar_file_marker;
+   __u32 tar_file_crc;
+   __u32 tar_file_size;
+};
+
 enum {
    UNKNOWN_TYPE,
    NANDFLASH,
@@ -62,6 +69,7 @@ struct volume {

 extern struct volume* volume_find(char *name);
 extern void volume_register_driver(struct driver *drv);
+extern int volume_read_tar_rootfs_data(const char* tar_destination);

 static inline int volume_init(struct volume *v)
 {
--- a/libfstools/mount.c
+++ b/libfstools/mount.c
@@ -21,6 +21,7 @@
 #include <string.h>

 #include =E2=80=9Clibfstools.h=E2=80=9D
+#include =E2=80=9Cvolume.h=E2=80=9D

 /* this is a raw syscall - man 2 pivot_root */
 extern int pivot_root(const char *new_root, const char *put_old);
@@ -152,8 +153,17 @@ fopivot(char *rw_root, char *ro_root)
 int
 ramoverlay(void)
 {
-   mkdir(=E2=80=9C/tmp/root=E2=80=9D, 0755);
-   mount(=E2=80=9Ctmpfs=E2=80=9D, =E2=80=9C/tmp/root=E2=80=9D, =E2=80=9Ctm=
pfs=E2=80=9D, MS_NOATIME, =E2=80=9Cmode=3D0755=E2=80=9D);
+   char rw_root[64] =3D =E2=80=9C/tmp/root=E2=80=9D;
+   char sysupgrade_dest[64];

-   return fopivot(=E2=80=9C/tmp/root=E2=80=9D, =E2=80=9C/rom=E2=80=9D);
+   mkdir(rw_root, 0755);
+   mount(=E2=80=9Ctmpfs=E2=80=9D, rw_root, =E2=80=9Ctmpfs=E2=80=9D, MS_NOA=
TIME, =E2=80=9Cmode=3D0755=E2=80=9D);
+
+   snprintf(sysupgrade_dest, sizeof(sysupgrade_dest), =E2=80=9C%s/sysupgra=
de.tgz=E2=80=9D,
rw_root);
+   if(!volume_read_tar_rootfs_data(sysupgrade_dest))
+       ULOG_NOTE(=E2=80=9Cconfig retreived from rootfs_data\n=E2=80=9D);
+   else
+       ULOG_NOTE(=E2=80=9Cno config retrieved from rootfs_data\n=E2=80=9D)=
;
+
+   return fopivot(rw_root, =E2=80=9C/rom=E2=80=9D);
 }
--- /dev/null
+++ b/libfstools/crc32.h
@@ -0,0 +1,26 @@
+#ifndef CRC32_H
+#define CRC32_H
+
+#include <stdint.h>
+
+extern const uint32_t crc32_table[256];
+
+/* Return a 32-bit CRC of the contents of the buffer. */
+
+static inline uint32_t
+crc32(uint32_t val, const void *ss, int len)
+{
+   const unsigned char *s =3D ss;
+   while (--len >=3D 0)
+       val =3D crc32_table[(val ^ *s++) & 0xff] ^ (val >> 8);
+   return val;
+}
+
+static inline unsigned int crc32buf(char *buf, size_t len)
+{
+   return crc32(0xFFFFFFFF, buf, len);
+}
+
+
+
+#endif
--- /dev/null
+++ b/libfstools/crc32.c
@@ -0,0 +1,95 @@
+/*
+ *  COPYRIGHT (C) 1986 Gary S. Brown.  You may use this program, or
+ *  code or tables extracted from it, as desired without restriction.
+ *
+ *  First, the polynomial itself and its table of feedback terms.  The
+ *  polynomial is
+ *  X^32+X^26+X^23+X^22+X^16+X^12+X^11+X^10+X^8+X^7+X^5+X^4+X^2+X^1+X^0
+ *
+ *  Note that we take it =E2=80=9Cbackwards=E2=80=9D and put the highest-o=
rder term in
+ *  the lowest-order bit.  The X^32 term is =E2=80=9Cimplied=E2=80=9D; the=
 LSB is the
+ *  X^31 term, etc.  The X^0 term (usually shown as =E2=80=9C+1") results =
in
+ *  the MSB being 1
+ *
+ *  Note that the usual hardware shift register implementation, which
+ *  is what we=E2=80=99re using (we=E2=80=99re merely optimizing it by doi=
ng eight-bit
+ *  chunks at a time) shifts bits into the lowest-order term.  In our
+ *  implementation, that means shifting towards the right.  Why do we
+ *  do it this way?  Because the calculated CRC must be transmitted in
+ *  order from highest-order term to lowest-order term.  UARTs transmit
+ *  characters in order from LSB to MSB.  By storing the CRC this way
+ *  we hand it to the UART in the order low-byte to high-byte; the UART
+ *  sends each low-bit to hight-bit; and the result is transmission bit
+ *  by bit from highest- to lowest-order term without requiring any bit
+ *  shuffling on our part.  Reception works similarly
+ *
+ *  The feedback terms table consists of 256, 32-bit entries.  Notes
+ *
+ *      The table can be generated at runtime if desired; code to do so
+ *      is shown later.  It might not be obvious, but the feedback
+ *      terms simply represent the results of eight shift/xor opera
+ *      tions for all combinations of data and CRC register values
+ *
+ *      The values must be right-shifted by eight bits by the =E2=80=9Cupd=
crc
+ *      logic; the shift must be unsigned (bring in zeroes).  On some
+ *      hardware you could probably optimize the shift in assembler by
+ *      using byte-swap instructions
+ *      polynomial $edb88320
+ */
+
+#include <stdint.h>
+
+const uint32_t crc32_table[256] =3D {
+   0x00000000L, 0x77073096L, 0xee0e612cL, 0x990951baL, 0x076dc419L,
+   0x706af48fL, 0xe963a535L, 0x9e6495a3L, 0x0edb8832L, 0x79dcb8a4L,
+   0xe0d5e91eL, 0x97d2d988L, 0x09b64c2bL, 0x7eb17cbdL, 0xe7b82d07L,
+   0x90bf1d91L, 0x1db71064L, 0x6ab020f2L, 0xf3b97148L, 0x84be41deL,
+   0x1adad47dL, 0x6ddde4ebL, 0xf4d4b551L, 0x83d385c7L, 0x136c9856L,
+   0x646ba8c0L, 0xfd62f97aL, 0x8a65c9ecL, 0x14015c4fL, 0x63066cd9L,
+   0xfa0f3d63L, 0x8d080df5L, 0x3b6e20c8L, 0x4c69105eL, 0xd56041e4L,
+   0xa2677172L, 0x3c03e4d1L, 0x4b04d447L, 0xd20d85fdL, 0xa50ab56bL,
+   0x35b5a8faL, 0x42b2986cL, 0xdbbbc9d6L, 0xacbcf940L, 0x32d86ce3L,
+   0x45df5c75L, 0xdcd60dcfL, 0xabd13d59L, 0x26d930acL, 0x51de003aL,
+   0xc8d75180L, 0xbfd06116L, 0x21b4f4b5L, 0x56b3c423L, 0xcfba9599L,
+   0xb8bda50fL, 0x2802b89eL, 0x5f058808L, 0xc60cd9b2L, 0xb10be924L,
+   0x2f6f7c87L, 0x58684c11L, 0xc1611dabL, 0xb6662d3dL, 0x76dc4190L,
+   0x01db7106L, 0x98d220bcL, 0xefd5102aL, 0x71b18589L, 0x06b6b51fL,
+   0x9fbfe4a5L, 0xe8b8d433L, 0x7807c9a2L, 0x0f00f934L, 0x9609a88eL,
+   0xe10e9818L, 0x7f6a0dbbL, 0x086d3d2dL, 0x91646c97L, 0xe6635c01L,
+   0x6b6b51f4L, 0x1c6c6162L, 0x856530d8L, 0xf262004eL, 0x6c0695edL,
+   0x1b01a57bL, 0x8208f4c1L, 0xf50fc457L, 0x65b0d9c6L, 0x12b7e950L,
+   0x8bbeb8eaL, 0xfcb9887cL, 0x62dd1ddfL, 0x15da2d49L, 0x8cd37cf3L,
+   0xfbd44c65L, 0x4db26158L, 0x3ab551ceL, 0xa3bc0074L, 0xd4bb30e2L,
+   0x4adfa541L, 0x3dd895d7L, 0xa4d1c46dL, 0xd3d6f4fbL, 0x4369e96aL,
+   0x346ed9fcL, 0xad678846L, 0xda60b8d0L, 0x44042d73L, 0x33031de5L,
+   0xaa0a4c5fL, 0xdd0d7cc9L, 0x5005713cL, 0x270241aaL, 0xbe0b1010L,
+   0xc90c2086L, 0x5768b525L, 0x206f85b3L, 0xb966d409L, 0xce61e49fL,
+   0x5edef90eL, 0x29d9c998L, 0xb0d09822L, 0xc7d7a8b4L, 0x59b33d17L,
+   0x2eb40d81L, 0xb7bd5c3bL, 0xc0ba6cadL, 0xedb88320L, 0x9abfb3b6L,
+   0x03b6e20cL, 0x74b1d29aL, 0xead54739L, 0x9dd277afL, 0x04db2615L,
+   0x73dc1683L, 0xe3630b12L, 0x94643b84L, 0x0d6d6a3eL, 0x7a6a5aa8L,
+   0xe40ecf0bL, 0x9309ff9dL, 0x0a00ae27L, 0x7d079eb1L, 0xf00f9344L,
+   0x8708a3d2L, 0x1e01f268L, 0x6906c2feL, 0xf762575dL, 0x806567cbL,
+   0x196c3671L, 0x6e6b06e7L, 0xfed41b76L, 0x89d32be0L, 0x10da7a5aL,
+   0x67dd4accL, 0xf9b9df6fL, 0x8ebeeff9L, 0x17b7be43L, 0x60b08ed5L,
+   0xd6d6a3e8L, 0xa1d1937eL, 0x38d8c2c4L, 0x4fdff252L, 0xd1bb67f1L,
+   0xa6bc5767L, 0x3fb506ddL, 0x48b2364bL, 0xd80d2bdaL, 0xaf0a1b4cL,
+   0x36034af6L, 0x41047a60L, 0xdf60efc3L, 0xa867df55L, 0x316e8eefL,
+   0x4669be79L, 0xcb61b38cL, 0xbc66831aL, 0x256fd2a0L, 0x5268e236L,
+   0xcc0c7795L, 0xbb0b4703L, 0x220216b9L, 0x5505262fL, 0xc5ba3bbeL,
+   0xb2bd0b28L, 0x2bb45a92L, 0x5cb36a04L, 0xc2d7ffa7L, 0xb5d0cf31L,
+   0x2cd99e8bL, 0x5bdeae1dL, 0x9b64c2b0L, 0xec63f226L, 0x756aa39cL,
+   0x026d930aL, 0x9c0906a9L, 0xeb0e363fL, 0x72076785L, 0x05005713L,
+   0x95bf4a82L, 0xe2b87a14L, 0x7bb12baeL, 0x0cb61b38L, 0x92d28e9bL,
+   0xe5d5be0dL, 0x7cdcefb7L, 0x0bdbdf21L, 0x86d3d2d4L, 0xf1d4e242L,
+   0x68ddb3f8L, 0x1fda836eL, 0x81be16cdL, 0xf6b9265bL, 0x6fb077e1L,
+   0x18b74777L, 0x88085ae6L, 0xff0f6a70L, 0x66063bcaL, 0x11010b5cL,
+   0x8f659effL, 0xf862ae69L, 0x616bffd3L, 0x166ccf45L, 0xa00ae278L,
+   0xd70dd2eeL, 0x4e048354L, 0x3903b3c2L, 0xa7672661L, 0xd06016f7L,
+   0x4969474dL, 0x3e6e77dbL, 0xaed16a4aL, 0xd9d65adcL, 0x40df0b66L,
+   0x37d83bf0L, 0xa9bcae53L, 0xdebb9ec5L, 0x47b2cf7fL, 0x30b5ffe9L,
+   0xbdbdf21cL, 0xcabac28aL, 0x53b39330L, 0x24b4a3a6L, 0xbad03605L,
+   0xcdd70693L, 0x54de5729L, 0x23d967bfL, 0xb3667a2eL, 0xc4614ab8L,
+   0x5d681b02L, 0x2a6f2b94L, 0xb40bbe37L, 0xc30c8ea1L, 0x5a05df1bL,
+   0x2d02ef8dL
+};
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -14,7 +14,8 @@ ADD_LIBRARY(fstools SHARED
        libfstools/mount.c
        libfstools/ubi.c
        libfstools/rootdisk.c
-       libfstools/find.c)
+       libfstools/find.c
+       libfstools/crc32.c)
 TARGET_LINK_LIBRARIES(fstools ubox)
 INSTALL(TARGETS fstools LIBRARY DESTINATION lib)


*package name:* package/system/mtd

--- a/jffs2.c
+++ b/jffs2.c
@@ -26,6 +26,7 @@
 #include <dirent.h>
 #include <unistd.h>
 #include <endian.h>
+#include <limits.h>
 #include =E2=80=9Cjffs2.h=E2=80=9D
 #include =E2=80=9Ccrc32.h=E2=80=9D
 #include =E2=80=9Cmtd.h=E2=80=9D
@@ -34,10 +35,14 @@

 #if BYTE_ORDER =3D=3D BIG_ENDIAN
 # define CLEANMARKER =E2=80=9C\x19\x85\x20\x03\x00\x00\x00\x0c\xf0\x60\xdc=
\x98"
+# define TARFILEMARKER =E2=80=9C\xad\xdd\xf1\x11=E2=80=9D
 #else
 # define CLEANMARKER =E2=80=9C\x85\x19\x03\x20\x0c\x00\x00\x00\xb1\xb0\x1e=
\xe4"
+# define TARFILEMARKER =E2=80=9C\x11\xf1\xdd\xad=E2=80=9D
 #endif

+#define CRC_BUF_LEN 4096
+
 static int last_ino =3D 0;
 static int last_version =3D 0;
 static char *buf =3D NULL;
@@ -236,24 +241,120 @@ static void add_file(const char *name, i
    close(fd);
 }

-int mtd_replace_jffs2(const char *mtd, int fd, int ofs, const char
*filename)
+void add_tar_cleanup(int fd, int in_mtdofs)
 {
-   outfd =3D fd;
-   mtdofs =3D ofs;
-
-   buf =3D malloc(erasesize);
-   target_ino =3D 1;
-   if (!last_ino)
-       last_ino =3D 1;
-   add_file(filename, target_ino);
-   pad(erasesize);
+   ofs =3D 0;
+   mtdofs =3D in_mtdofs;

-   /* add eof marker, pad to eraseblock size and write the data */
+   /* If at any point we fail, erase the first block
+    * and replace the JFFS2_EOF. In mtd_add_tar_file_jffs2(),
+    * return a =E2=80=98skip=E2=80=99 of 1 erase block so that we jump ove=
r 0xdeadc0de. */
+   mtd_erase_block(fd, mtdofs);
    add_data(JFFS2_EOF, sizeof(JFFS2_EOF) - 1);
    pad(erasesize);
-   free(buf);
+}
+
+int mtd_add_tar_file_jffs2(const char *mtd, int fd, int in_mtdofs, const
char *filename)
+{
+   outfd =3D fd;
+   mtdofs =3D in_mtdofs;
+   struct stat tar_file_st;
+   int tar_fd;
+   int bytes_crc =3D 0;
+   int bytes_read =3D 0;
+   int total_bytes_read =3D 0;
+   char* crc_buf;
+   uint32_t temp_file_size =3D 0;
+   uint32_t tar_crc =3D 0;
+   uint32_t mask =3D 0xffffffff;
+
+   /* If sysupgrade.tgz passed in,
+    * write 16-byte header followed by file contents.
+    * TARFILEMARKER will head each subsequent block
+    * needed to write the rest of the file. */
+   if (!stat(filename, &tar_file_st)){
+       tar_fd =3D open(filename, 0);
+       if (tar_fd < 0) {
+           fprintf(stderr, =E2=80=9CFile %s does not exist\n=E2=80=9D, fil=
ename);
+           add_tar_cleanup(outfd, in_mtdofs);
+           return erasesize;
+       }
+
+       /* Calculate crc */
+       crc_buf =3D malloc(CRC_BUF_LEN);
+       if(!crc_buf){
+           fprintf(stderr, =E2=80=9COut of memory\n=E2=80=9D);
+           add_tar_cleanup(outfd, in_mtdofs);
+           return erasesize;
+       }
+       bytes_crc =3D read(tar_fd, crc_buf, CRC_BUF_LEN);
+       tar_crc =3D crc32(0, crc_buf, bytes_crc);
+       while(bytes_crc)
+       {
+           bytes_crc =3D read(tar_fd, crc_buf, CRC_BUF_LEN);
+           tar_crc =3D crc32(tar_crc, crc_buf, bytes_crc);
+       }
+       free(crc_buf);
+       lseek(tar_fd, 0, SEEK_SET);
+       buf =3D malloc(erasesize);
+       if(!buf){
+           fprintf(stderr, =E2=80=9COut of memory\n=E2=80=9D);
+           add_tar_cleanup(outfd, in_mtdofs);
+           return erasesize;
+       }
+       ofs =3D 0;
+
+       add_data(JFFS2_EOF, sizeof(JFFS2_EOF) - 1);
+       add_data(TARFILEMARKER, sizeof(TARFILEMARKER) - 1);
+
+       /* sizeof(off_t) can be 16 to 64 bytes.
+        * Set the cut off at 4 bytes unsigned */
+       if(tar_file_st.st_size >=3D 0 && tar_file_st.st_size <=3D UINT_MAX)=
{
+           temp_file_size =3D tar_file_st.st_size & mask;
+       }
+       else{
+           fprintf(stderr, =E2=80=9CIncoming tar file too large. Tar file =
size is
%lld, max size is %u=E2=80=9D
+               , tar_file_st.st_size
+               , UINT_MAX
+               );
+           add_tar_cleanup(outfd, in_mtdofs);
+           free(buf);
+           close(tar_fd);
+           return erasesize;
+       }
+
+       add_data((char*)&tar_crc, sizeof(tar_crc));
+       add_data((char*)&temp_file_size, sizeof(mask));
+
+       total_bytes_read =3D read(tar_fd, buf + ofs,
+           erasesize - (sizeof(JFFS2_EOF) - 1 + sizeof(TARFILEMARKER) - 1
+ sizeof(erasesize) + 4));
+       ofs +=3D total_bytes_read;
+       pad(erasesize);
+
+       while(total_bytes_read !=3D temp_file_size && mtdofs < mtdsize)
+       {
+           ofs =3D 0;
+           add_data(TARFILEMARKER, sizeof(TARFILEMARKER) - 1);
+           bytes_read =3D read(tar_fd, buf + ofs, erasesize -
sizeof(TARFILEMARKER) - 1);
+           ofs +=3D bytes_read;
+           pad(erasesize);
+           total_bytes_read +=3D bytes_read;
+       }
+       if(total_bytes_read !=3D tar_file_st.st_size){
+           fprintf(stderr, =E2=80=9CError reading from file %s\n=E2=80=9D,=
 filename);
+           add_tar_cleanup(outfd, in_mtdofs);
+           free(buf);
+           close(tar_fd);
+           return erasesize;
+       }
+       free(buf);
+       close(tar_fd);
+       ofs =3D 0;
+       return (mtdofs - in_mtdofs);
+   }

-   return (mtdofs - ofs);
+   add_tar_cleanup(outfd, in_mtdofs);
+   return mtdofs - in_mtdofs;
 }

 void mtd_parse_jffs2data(const char *buf, const char *dir)
--- a/mtd.c
+++ b/mtd.c
@@ -468,7 +468,7 @@ mtd_write(int imagefd, const char *mtd,
    ssize_t r, w, e;
    ssize_t skip =3D 0;
    uint32_t offset =3D 0;
-   int jffs2_replaced =3D 0;
+   int jffs2_tar_file_added =3D 0;
    int skip_bad_blocks =3D 0;

 #ifdef FIS_SUPPORT
@@ -597,8 +597,8 @@ resume:
                if (quiet < 2)
                    fprintf(stderr, =E2=80=9C\nAppending jffs2 data from %s=
 to
%s..\n.=E2=80=9C, jffs2file, mtd);
                /* got an EOF marker - this is the place to add some jffs2
data */
-               skip =3D mtd_replace_jffs2(mtd, fd, e, jffs2file);
-               jffs2_replaced =3D 1;
+               skip =3D mtd_add_tar_file_jffs2(mtd, fd, e, jffs2file);
+               jffs2_tar_file_added =3D 1;

                /* don=E2=80=99t add it again */
                jffs2file =3D NULL;
@@ -675,7 +675,7 @@ resume:
        offset =3D 0;
    }

-   if (jffs2_replaced) {
+   if (jffs2_tar_file_added) {
        switch (imageformat) {
        case MTD_IMAGE_FORMAT_TRX:
            if (trx_fixup)
--- a/mtd.h
+++ b/mtd.h
@@ -19,7 +19,7 @@ extern int mtd_block_is_bad(int fd, int
 extern int mtd_erase_block(int fd, int offset);
 extern int mtd_write_buffer(int fd, const char *buf, int offset, int
length);
 extern int mtd_write_jffs2(const char *mtd, const char *filename, const
char *dir);
-extern int mtd_replace_jffs2(const char *mtd, int fd, int ofs, const char
*filename);
+extern int mtd_add_tar_file_jffs2(const char *mtd, int fd, int ofs, const
char *filename);
 extern void mtd_parse_jffs2data(const char *buf, const char *dir);

 /* target specific functions */

Signed-off-by: Sean Miller <seanmichaelmiller2014@gmail.com>

These two patches (both must be applied) fix this bug.
If always mounting the jffs2 overlay and skipping the ram overlay when
sysupgrade.tgz is saved across an upgrade is the desired behavior,
I will instead submit changes to the documentation.

Thanks for your time

--000000000000c0afcc05a2ab2711
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear John Crispin and=C2=A0Felix Fietkau,<br><br><b>D=
escription:</b> During the first boot following a sysupgrade, if the rootfs=
_data<br>partition has not been formatted, the intended behavior is to moun=
t a=C2=A0<br>temporary ram overlay filesystem, deferring the cleaning and f=
ormatting=C2=A0<br>of the rootfs_data partition and the switch to the jffs2=
 overlay until</div><div>later in=C2=A0the init sequence. If a sysupgrade c=
all preserves a config across</div><div>the=C2=A0update (via sysupgrade.tgz=
), the jffs2 overlay is always immediately=C2=A0<br>mounted, regardless of =
whether or not the rootfs_data partition has=C2=A0<br>been formatted.<br><b=
r>Launching the jffs2 overlay when the rootfs_data partition has not been=
=C2=A0<br>formatted blocks preinit_main for the duration of the formatting.=
 This can <br>be fatal, especially on systems=C2=A0with large rootfs_data p=
artitions. <br>Even on machines that can survive the=C2=A0preinit hang, the=
 intermediate ram <br>overlay should be launched=C2=A0for consistency acros=
s boots.<br><br>This bug also causes the jffs2 driver to not clean up the f=
irst blocks=C2=A0<br>of rootfs_data used to store sysupgrade.tgz, leaving t=
hose blocks=C2=A0</div><div>to be cleaned before use during userspace run t=
ime.=C2=A0</div><div><br><b>package name:</b>=C2=A0package/system/fstools<b=
r><br>--- a/libfstools/volume.c<br>+++ b/libfstools/volume.c<br>@@ -12,11 +=
12,17 @@<br>=C2=A0 */<br>=C2=A0<br>=C2=A0#include &lt;sys/mount.h&gt;<br>+#=
include &lt;sys/types.h&gt;<br>+#include &lt;sys/stat.h&gt;<br>+#include &l=
t;fcntl.h&gt;<br>=C2=A0#include &lt;stdio.h&gt;<br>=C2=A0#include &lt;stdli=
b.h&gt;<br>=C2=A0<br>=C2=A0#include =E2=80=9Clibfstools.h=E2=80=9D<br>=C2=
=A0#include =E2=80=9Cvolume.h=E2=80=9D<br>+#include =E2=80=9Ccrc32.h=E2=80=
=9D<br>+<br>+#define CRC_BUF_LEN 4096<br>=C2=A0<br>=C2=A0static LIST_HEAD(d=
rivers);<br>=C2=A0<br>@@ -41,3 +47,96 @@ struct volume* volume_find(char *n=
ame)<br>=C2=A0<br>=C2=A0 =C2=A0 return NULL;<br>=C2=A0}<br>+<br>+/*<br>+ * =
if we are using a jffs2 rootfs_data partition,<br>+ * parse sysupgrade.tgz =
from rootfs_data, and move it<br>+ * to the newly mounted RAM read-write ro=
ot<br>+ */<br>+int volume_read_tar_rootfs_data(const char* tar_destination)=
<br>+{<br>+ =C2=A0 int destination_fd;<br>+ =C2=A0 char *read_buf;<br>+ =C2=
=A0 char *crc_buf;<br>+ =C2=A0 unsigned int bytes_crc =3D 0;<br>+ =C2=A0 un=
signed int bytes_read =3D 0;<br>+ =C2=A0 unsigned int bytes_written =3D 0;<=
br>+ =C2=A0 unsigned int total_bytes_read =3D 0;<br>+ =C2=A0 unsigned int r=
ootfs_data_ofs =3D 0;<br>+ =C2=A0 __u32 tar_page_marker;<br>+ =C2=A0 __u32 =
calculated_crc;<br>+ =C2=A0 struct tar_file_header header;<br>+ =C2=A0 stru=
ct volume *rootfs_data =3D volume_find(=E2=80=9Crootfs_data=E2=80=9D);<br>+=
<br>+ =C2=A0 volume_init(rootfs_data);<br>+ =C2=A0 volume_read(rootfs_data,=
 &amp;header, 0, sizeof(header));<br>+<br>+ =C2=A0 rootfs_data_ofs =3D size=
of(header);<br>+ =C2=A0 if(header.tar_file_marker =3D=3D 0xadddf111){<br>+ =
=C2=A0 =C2=A0 =C2=A0 read_buf =3D malloc(rootfs_data-&gt;block_size);<br>+ =
=C2=A0 =C2=A0 =C2=A0 if(read_buf){<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
destination_fd =3D open(tar_destination, O_RDWR | O_CREAT, S_IRWXG);<br>+ =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if(destination_fd &gt;=3D 0){<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if(header.tar_file_size &gt;=
=3D rootfs_data-&gt;block_size - sizeof(header)){<br>+ =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 volume_read(rootfs_data, read_bu=
f, rootfs_data_ofs, rootfs_data-&gt;block_size - sizeof(header));<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bytes_read =3D =
rootfs_data-&gt;block_size - sizeof(header);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 else{<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 volume_read(rootfs_data, read_buf, rootfs_data_ofs, header.tar_file_=
size);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
bytes_read =3D header.tar_file_size;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 }<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 t=
otal_bytes_read +=3D bytes_read;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 rootfs_data_ofs +=3D bytes_read;<br>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bytes_written =3D write(destination_fd, read_bu=
f, bytes_read);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 while=
(bytes_written !=3D header.tar_file_size &amp;&amp; rootfs_data_ofs &lt; ro=
otfs_data-&gt;size){<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 volume_read(rootfs_data, &amp;tar_page_marker, rootfs_data_of=
s, sizeof(tar_page_marker));<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 rootfs_data_ofs +=3D sizeof(tar_page_marker);<br>+ =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if(tar_page_=
marker =3D=3D 0xadddf111){<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if(header.tar_file_size &gt;=3D total_by=
tes_read + rootfs_data-&gt;block_size - sizeof(tar_page_marker)){<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 volume_read(rootfs_data, read_buf, rootfs_data_ofs, rootfs_da=
ta-&gt;block_size - sizeof(header));<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bytes_read =3D =
rootfs_data-&gt;block_size - sizeof(header);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else{<br>+ =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 volume_read(rootfs_data, read_buf, rootfs_data_ofs, heade=
r.tar_file_size - total_bytes_read - sizeof(tar_page_marker));<br>+ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 bytes_read =3D header.tar_file_size - total_bytes_read - sizeof(=
tar_page_marker);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 total_bytes_read +=3D bytes_read;<br>+ =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 rootfs_data_ofs +=3D bytes_read;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bytes_written +=3D write(dest=
ination_fd, read_buf, bytes_read);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 else{<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* bad block, skip it */<br>+ =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 root=
fs_data_ofs +=3D rootfs_data-&gt;block_size - sizeof(tar_page_marker);<br>+=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 free(read_buf);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 read_buf =3D NULL;<br>+<br>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* crc check */<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if(bytes_written){<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lseek(destination_fd, 0, SEEK_SET);<=
br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 crc_buf=
 =3D malloc(CRC_BUF_LEN);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if(crc_buf){<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bytes_crc =3D read(destination_fd=
, crc_buf, CRC_BUF_LEN);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 calculated_crc =3D crc32(0, crc_buf, bytes_=
crc);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 while(bytes_crc){<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bytes_crc =3D read(des=
tination_fd, crc_buf, CRC_BUF_LEN);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 calculated_crc =3D=
 crc32(calculated_crc, crc_buf, bytes_crc);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(crc_buf=
);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if(calculated_crc =3D=3D header.tar_file_crc){<br>+ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 close(destination_fd);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>+ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* uh oh... something went wrong */<br>+ =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 close(destination_fd);<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 remove(tar_destination);<br>+=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if(read_buf)<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free=
(read_buf);<br>+ =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=A0 }<br>+ =C2=A0 return -1=
;<br>+}<br>--- a/libfstools/volume.h<br>+++ b/libfstools/volume.h<br>@@ -42=
,6 +42,13 @@ struct driver {<br>=C2=A0 =C2=A0 volume_erase_all_t =C2=A0eras=
e_all;<br>=C2=A0};<br>=C2=A0<br>+struct tar_file_header {<br>+ =C2=A0 __u32=
 deadcode;<br>+ =C2=A0 __u32 tar_file_marker;<br>+ =C2=A0 __u32 tar_file_cr=
c;<br>+ =C2=A0 __u32 tar_file_size;<br>+};<br>+<br>=C2=A0enum {<br>=C2=A0 =
=C2=A0 UNKNOWN_TYPE,<br>=C2=A0 =C2=A0 NANDFLASH,<br>@@ -62,6 +69,7 @@ struc=
t volume {<br>=C2=A0<br>=C2=A0extern struct volume* volume_find(char *name)=
;<br>=C2=A0extern void volume_register_driver(struct driver *drv);<br>+exte=
rn int volume_read_tar_rootfs_data(const char* tar_destination);<br>=C2=A0<=
br>=C2=A0static inline int volume_init(struct volume *v)<br>=C2=A0{<br>--- =
a/libfstools/mount.c<br>+++ b/libfstools/mount.c<br>@@ -21,6 +21,7 @@<br>=
=C2=A0#include &lt;string.h&gt;<br>=C2=A0<br>=C2=A0#include =E2=80=9Clibfst=
ools.h=E2=80=9D<br>+#include =E2=80=9Cvolume.h=E2=80=9D<br>=C2=A0<br>=C2=A0=
/* this is a raw syscall - man 2 pivot_root */<br>=C2=A0extern int pivot_ro=
ot(const char *new_root, const char *put_old);<br>@@ -152,8 +153,17 @@ fopi=
vot(char *rw_root, char *ro_root)<br>=C2=A0int<br>=C2=A0ramoverlay(void)<br=
>=C2=A0{<br>- =C2=A0 mkdir(=E2=80=9C/tmp/root=E2=80=9D, 0755);<br>- =C2=A0 =
mount(=E2=80=9Ctmpfs=E2=80=9D, =E2=80=9C/tmp/root=E2=80=9D, =E2=80=9Ctmpfs=
=E2=80=9D, MS_NOATIME, =E2=80=9Cmode=3D0755=E2=80=9D);<br>+ =C2=A0 char rw_=
root[64] =3D =E2=80=9C/tmp/root=E2=80=9D;<br>+ =C2=A0 char sysupgrade_dest[=
64];<br>=C2=A0<br>- =C2=A0 return fopivot(=E2=80=9C/tmp/root=E2=80=9D, =E2=
=80=9C/rom=E2=80=9D);<br>+ =C2=A0 mkdir(rw_root, 0755);<br>+ =C2=A0 mount(=
=E2=80=9Ctmpfs=E2=80=9D, rw_root, =E2=80=9Ctmpfs=E2=80=9D, MS_NOATIME, =E2=
=80=9Cmode=3D0755=E2=80=9D);<br>+<br>+ =C2=A0 snprintf(sysupgrade_dest, siz=
eof(sysupgrade_dest), =E2=80=9C%s/sysupgrade.tgz=E2=80=9D, rw_root);<br>+ =
=C2=A0 if(!volume_read_tar_rootfs_data(sysupgrade_dest))<br>+ =C2=A0 =C2=A0=
 =C2=A0 ULOG_NOTE(=E2=80=9Cconfig retreived from rootfs_data\n=E2=80=9D);<b=
r>+ =C2=A0 else<br>+ =C2=A0 =C2=A0 =C2=A0 ULOG_NOTE(=E2=80=9Cno config retr=
ieved from rootfs_data\n=E2=80=9D);<br>+<br>+ =C2=A0 return fopivot(rw_root=
, =E2=80=9C/rom=E2=80=9D);<br>=C2=A0}<br>--- /dev/null<br>+++ b/libfstools/=
crc32.h<br>@@ -0,0 +1,26 @@<br>+#ifndef CRC32_H<br>+#define CRC32_H<br>+<br=
>+#include &lt;stdint.h&gt;<br>+<br>+extern const uint32_t crc32_table[256]=
;<br>+<br>+/* Return a 32-bit CRC of the contents of the buffer. */<br>+<br=
>+static inline uint32_t<br>+crc32(uint32_t val, const void *ss, int len)<b=
r>+{<br>+ =C2=A0 const unsigned char *s =3D ss;<br>+ =C2=A0 while (--len &g=
t;=3D 0)<br>+ =C2=A0 =C2=A0 =C2=A0 val =3D crc32_table[(val ^ *s++) &amp; 0=
xff] ^ (val &gt;&gt; 8);<br>+ =C2=A0 return val;<br>+}<br>+<br>+static inli=
ne unsigned int crc32buf(char *buf, size_t len)<br>+{<br>+ =C2=A0 return cr=
c32(0xFFFFFFFF, buf, len);<br>+}<br>+<br>+<br>+<br>+#endif<br>--- /dev/null=
<br>+++ b/libfstools/crc32.c<br>@@ -0,0 +1,95 @@<br>+/*<br>+ * =C2=A0COPYRI=
GHT (C) 1986 Gary S. Brown.=C2=A0 You may use this program, or<br>+ * =C2=
=A0code or tables extracted from it, as desired without restriction.<br>+ *=
<br>+ * =C2=A0First, the polynomial itself and its table of feedback terms.=
=C2=A0 The<br>+ * =C2=A0polynomial is<br>+ * =C2=A0X^32+X^26+X^23+X^22+X^16=
+X^12+X^11+X^10+X^8+X^7+X^5+X^4+X^2+X^1+X^0<br>+ *<br>+ * =C2=A0Note that w=
e take it =E2=80=9Cbackwards=E2=80=9D and put the highest-order term in<br>=
+ * =C2=A0the lowest-order bit.=C2=A0 The X^32 term is =E2=80=9Cimplied=E2=
=80=9D; the LSB is the<br>+ * =C2=A0X^31 term, etc.=C2=A0 The X^0 term (usu=
ally shown as =E2=80=9C+1&quot;) results in<br>+ * =C2=A0the MSB being 1<br=
>+ *<br>+ * =C2=A0Note that the usual hardware shift register implementatio=
n, which<br>+ * =C2=A0is what we=E2=80=99re using (we=E2=80=99re merely opt=
imizing it by doing eight-bit<br>+ * =C2=A0chunks at a time) shifts bits in=
to the lowest-order term.=C2=A0 In our<br>+ * =C2=A0implementation, that me=
ans shifting towards the right.=C2=A0 Why do we<br>+ * =C2=A0do it this way=
?=C2=A0 Because the calculated CRC must be transmitted in<br>+ * =C2=A0orde=
r from highest-order term to lowest-order term.=C2=A0 UARTs transmit<br>+ *=
 =C2=A0characters in order from LSB to MSB.=C2=A0 By storing the CRC this w=
ay<br>+ * =C2=A0we hand it to the UART in the order low-byte to high-byte; =
the UART<br>+ * =C2=A0sends each low-bit to hight-bit; and the result is tr=
ansmission bit<br>+ * =C2=A0by bit from highest- to lowest-order term witho=
ut requiring any bit<br>+ * =C2=A0shuffling on our part.=C2=A0 Reception wo=
rks similarly<br>+ *<br>+ * =C2=A0The feedback terms table consists of 256,=
 32-bit entries.=C2=A0 Notes<br>+ *<br>+ * =C2=A0 =C2=A0 =C2=A0The table ca=
n be generated at runtime if desired; code to do so<br>+ * =C2=A0 =C2=A0 =
=C2=A0is shown later.=C2=A0 It might not be obvious, but the feedback<br>+ =
* =C2=A0 =C2=A0 =C2=A0terms simply represent the results of eight shift/xor=
 opera<br>+ * =C2=A0 =C2=A0 =C2=A0tions for all combinations of data and CR=
C register values<br>+ *<br>+ * =C2=A0 =C2=A0 =C2=A0The values must be righ=
t-shifted by eight bits by the =E2=80=9Cupdcrc<br>+ * =C2=A0 =C2=A0 =C2=A0l=
ogic; the shift must be unsigned (bring in zeroes).=C2=A0 On some<br>+ * =
=C2=A0 =C2=A0 =C2=A0hardware you could probably optimize the shift in assem=
bler by<br>+ * =C2=A0 =C2=A0 =C2=A0using byte-swap instructions<br>+ * =C2=
=A0 =C2=A0 =C2=A0polynomial $edb88320<br>+ */<br>+<br>+#include &lt;stdint.=
h&gt;<br>+<br>+const uint32_t crc32_table[256] =3D {<br>+ =C2=A0 0x00000000=
L, 0x77073096L, 0xee0e612cL, 0x990951baL, 0x076dc419L,<br>+ =C2=A0 0x706af4=
8fL, 0xe963a535L, 0x9e6495a3L, 0x0edb8832L, 0x79dcb8a4L,<br>+ =C2=A0 0xe0d5=
e91eL, 0x97d2d988L, 0x09b64c2bL, 0x7eb17cbdL, 0xe7b82d07L,<br>+ =C2=A0 0x90=
bf1d91L, 0x1db71064L, 0x6ab020f2L, 0xf3b97148L, 0x84be41deL,<br>+ =C2=A0 0x=
1adad47dL, 0x6ddde4ebL, 0xf4d4b551L, 0x83d385c7L, 0x136c9856L,<br>+ =C2=A0 =
0x646ba8c0L, 0xfd62f97aL, 0x8a65c9ecL, 0x14015c4fL, 0x63066cd9L,<br>+ =C2=
=A0 0xfa0f3d63L, 0x8d080df5L, 0x3b6e20c8L, 0x4c69105eL, 0xd56041e4L,<br>+ =
=C2=A0 0xa2677172L, 0x3c03e4d1L, 0x4b04d447L, 0xd20d85fdL, 0xa50ab56bL,<br>=
+ =C2=A0 0x35b5a8faL, 0x42b2986cL, 0xdbbbc9d6L, 0xacbcf940L, 0x32d86ce3L,<b=
r>+ =C2=A0 0x45df5c75L, 0xdcd60dcfL, 0xabd13d59L, 0x26d930acL, 0x51de003aL,=
<br>+ =C2=A0 0xc8d75180L, 0xbfd06116L, 0x21b4f4b5L, 0x56b3c423L, 0xcfba9599=
L,<br>+ =C2=A0 0xb8bda50fL, 0x2802b89eL, 0x5f058808L, 0xc60cd9b2L, 0xb10be9=
24L,<br>+ =C2=A0 0x2f6f7c87L, 0x58684c11L, 0xc1611dabL, 0xb6662d3dL, 0x76dc=
4190L,<br>+ =C2=A0 0x01db7106L, 0x98d220bcL, 0xefd5102aL, 0x71b18589L, 0x06=
b6b51fL,<br>+ =C2=A0 0x9fbfe4a5L, 0xe8b8d433L, 0x7807c9a2L, 0x0f00f934L, 0x=
9609a88eL,<br>+ =C2=A0 0xe10e9818L, 0x7f6a0dbbL, 0x086d3d2dL, 0x91646c97L, =
0xe6635c01L,<br>+ =C2=A0 0x6b6b51f4L, 0x1c6c6162L, 0x856530d8L, 0xf262004eL=
, 0x6c0695edL,<br>+ =C2=A0 0x1b01a57bL, 0x8208f4c1L, 0xf50fc457L, 0x65b0d9c=
6L, 0x12b7e950L,<br>+ =C2=A0 0x8bbeb8eaL, 0xfcb9887cL, 0x62dd1ddfL, 0x15da2=
d49L, 0x8cd37cf3L,<br>+ =C2=A0 0xfbd44c65L, 0x4db26158L, 0x3ab551ceL, 0xa3b=
c0074L, 0xd4bb30e2L,<br>+ =C2=A0 0x4adfa541L, 0x3dd895d7L, 0xa4d1c46dL, 0xd=
3d6f4fbL, 0x4369e96aL,<br>+ =C2=A0 0x346ed9fcL, 0xad678846L, 0xda60b8d0L, 0=
x44042d73L, 0x33031de5L,<br>+ =C2=A0 0xaa0a4c5fL, 0xdd0d7cc9L, 0x5005713cL,=
 0x270241aaL, 0xbe0b1010L,<br>+ =C2=A0 0xc90c2086L, 0x5768b525L, 0x206f85b3=
L, 0xb966d409L, 0xce61e49fL,<br>+ =C2=A0 0x5edef90eL, 0x29d9c998L, 0xb0d098=
22L, 0xc7d7a8b4L, 0x59b33d17L,<br>+ =C2=A0 0x2eb40d81L, 0xb7bd5c3bL, 0xc0ba=
6cadL, 0xedb88320L, 0x9abfb3b6L,<br>+ =C2=A0 0x03b6e20cL, 0x74b1d29aL, 0xea=
d54739L, 0x9dd277afL, 0x04db2615L,<br>+ =C2=A0 0x73dc1683L, 0xe3630b12L, 0x=
94643b84L, 0x0d6d6a3eL, 0x7a6a5aa8L,<br>+ =C2=A0 0xe40ecf0bL, 0x9309ff9dL, =
0x0a00ae27L, 0x7d079eb1L, 0xf00f9344L,<br>+ =C2=A0 0x8708a3d2L, 0x1e01f268L=
, 0x6906c2feL, 0xf762575dL, 0x806567cbL,<br>+ =C2=A0 0x196c3671L, 0x6e6b06e=
7L, 0xfed41b76L, 0x89d32be0L, 0x10da7a5aL,<br>+ =C2=A0 0x67dd4accL, 0xf9b9d=
f6fL, 0x8ebeeff9L, 0x17b7be43L, 0x60b08ed5L,<br>+ =C2=A0 0xd6d6a3e8L, 0xa1d=
1937eL, 0x38d8c2c4L, 0x4fdff252L, 0xd1bb67f1L,<br>+ =C2=A0 0xa6bc5767L, 0x3=
fb506ddL, 0x48b2364bL, 0xd80d2bdaL, 0xaf0a1b4cL,<br>+ =C2=A0 0x36034af6L, 0=
x41047a60L, 0xdf60efc3L, 0xa867df55L, 0x316e8eefL,<br>+ =C2=A0 0x4669be79L,=
 0xcb61b38cL, 0xbc66831aL, 0x256fd2a0L, 0x5268e236L,<br>+ =C2=A0 0xcc0c7795=
L, 0xbb0b4703L, 0x220216b9L, 0x5505262fL, 0xc5ba3bbeL,<br>+ =C2=A0 0xb2bd0b=
28L, 0x2bb45a92L, 0x5cb36a04L, 0xc2d7ffa7L, 0xb5d0cf31L,<br>+ =C2=A0 0x2cd9=
9e8bL, 0x5bdeae1dL, 0x9b64c2b0L, 0xec63f226L, 0x756aa39cL,<br>+ =C2=A0 0x02=
6d930aL, 0x9c0906a9L, 0xeb0e363fL, 0x72076785L, 0x05005713L,<br>+ =C2=A0 0x=
95bf4a82L, 0xe2b87a14L, 0x7bb12baeL, 0x0cb61b38L, 0x92d28e9bL,<br>+ =C2=A0 =
0xe5d5be0dL, 0x7cdcefb7L, 0x0bdbdf21L, 0x86d3d2d4L, 0xf1d4e242L,<br>+ =C2=
=A0 0x68ddb3f8L, 0x1fda836eL, 0x81be16cdL, 0xf6b9265bL, 0x6fb077e1L,<br>+ =
=C2=A0 0x18b74777L, 0x88085ae6L, 0xff0f6a70L, 0x66063bcaL, 0x11010b5cL,<br>=
+ =C2=A0 0x8f659effL, 0xf862ae69L, 0x616bffd3L, 0x166ccf45L, 0xa00ae278L,<b=
r>+ =C2=A0 0xd70dd2eeL, 0x4e048354L, 0x3903b3c2L, 0xa7672661L, 0xd06016f7L,=
<br>+ =C2=A0 0x4969474dL, 0x3e6e77dbL, 0xaed16a4aL, 0xd9d65adcL, 0x40df0b66=
L,<br>+ =C2=A0 0x37d83bf0L, 0xa9bcae53L, 0xdebb9ec5L, 0x47b2cf7fL, 0x30b5ff=
e9L,<br>+ =C2=A0 0xbdbdf21cL, 0xcabac28aL, 0x53b39330L, 0x24b4a3a6L, 0xbad0=
3605L,<br>+ =C2=A0 0xcdd70693L, 0x54de5729L, 0x23d967bfL, 0xb3667a2eL, 0xc4=
614ab8L,<br>+ =C2=A0 0x5d681b02L, 0x2a6f2b94L, 0xb40bbe37L, 0xc30c8ea1L, 0x=
5a05df1bL,<br>+ =C2=A0 0x2d02ef8dL<br>+};<br>--- a/CMakeLists.txt<br>+++ b/=
CMakeLists.txt<br>@@ -14,7 +14,8 @@ ADD_LIBRARY(fstools SHARED<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 libfstools/mount.c<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libf=
stools/ubi.c<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libfstools/rootdisk.c<br>- =C2=
=A0 =C2=A0 =C2=A0 libfstools/find.c)<br>+ =C2=A0 =C2=A0 =C2=A0 libfstools/f=
ind.c<br>+ =C2=A0 =C2=A0 =C2=A0 libfstools/crc32.c)<br>=C2=A0TARGET_LINK_LI=
BRARIES(fstools ubox)<br>=C2=A0INSTALL(TARGETS fstools LIBRARY DESTINATION =
lib)<br>=C2=A0<br><br><b>package name:</b> package/system/mtd<br><br>--- a/=
jffs2.c<br>+++ b/jffs2.c<br>@@ -26,6 +26,7 @@<br>=C2=A0#include &lt;dirent.=
h&gt;<br>=C2=A0#include &lt;unistd.h&gt;<br>=C2=A0#include &lt;endian.h&gt;=
<br>+#include &lt;limits.h&gt;<br>=C2=A0#include =E2=80=9Cjffs2.h=E2=80=9D<=
br>=C2=A0#include =E2=80=9Ccrc32.h=E2=80=9D<br>=C2=A0#include =E2=80=9Cmtd.=
h=E2=80=9D<br>@@ -34,10 +35,14 @@<br>=C2=A0<br>=C2=A0#if BYTE_ORDER =3D=3D =
BIG_ENDIAN<br>=C2=A0# define CLEANMARKER =E2=80=9C\x19\x85\x20\x03\x00\x00\=
x00\x0c\xf0\x60\xdc\x98&quot;<br>+# define TARFILEMARKER =E2=80=9C\xad\xdd\=
xf1\x11=E2=80=9D<br>=C2=A0#else<br>=C2=A0# define CLEANMARKER =E2=80=9C\x85=
\x19\x03\x20\x0c\x00\x00\x00\xb1\xb0\x1e\xe4&quot;<br>+# define TARFILEMARK=
ER =E2=80=9C\x11\xf1\xdd\xad=E2=80=9D<br>=C2=A0#endif<br>=C2=A0<br>+#define=
 CRC_BUF_LEN 4096<br>+<br>=C2=A0static int last_ino =3D 0;<br>=C2=A0static =
int last_version =3D 0;<br>=C2=A0static char *buf =3D NULL;<br>@@ -236,24 +=
241,120 @@ static void add_file(const char *name, i<br>=C2=A0 =C2=A0 close(=
fd);<br>=C2=A0}<br>=C2=A0<br>-int mtd_replace_jffs2(const char *mtd, int fd=
, int ofs, const char *filename)<br>+void add_tar_cleanup(int fd, int in_mt=
dofs)<br>=C2=A0{<br>- =C2=A0 outfd =3D fd;<br>- =C2=A0 mtdofs =3D ofs;<br>-=
<br>- =C2=A0 buf =3D malloc(erasesize);<br>- =C2=A0 target_ino =3D 1;<br>- =
=C2=A0 if (!last_ino)<br>- =C2=A0 =C2=A0 =C2=A0 last_ino =3D 1;<br>- =C2=A0=
 add_file(filename, target_ino);<br>- =C2=A0 pad(erasesize);<br>+ =C2=A0 of=
s =3D 0;<br>+ =C2=A0 mtdofs =3D in_mtdofs;<br>=C2=A0<br>- =C2=A0 /* add eof=
 marker, pad to eraseblock size and write the data */<br>+ =C2=A0 /* If at =
any point we fail, erase the first block<br>+ =C2=A0 =C2=A0* and replace th=
e JFFS2_EOF. In mtd_add_tar_file_jffs2(),<br>+ =C2=A0 =C2=A0* return a =E2=
=80=98skip=E2=80=99 of 1 erase block so that we jump over 0xdeadc0de. */<br=
>+ =C2=A0 mtd_erase_block(fd, mtdofs);<br>=C2=A0 =C2=A0 add_data(JFFS2_EOF,=
 sizeof(JFFS2_EOF) - 1);<br>=C2=A0 =C2=A0 pad(erasesize);<br>- =C2=A0 free(=
buf);<br>+}<br>+<br>+int mtd_add_tar_file_jffs2(const char *mtd, int fd, in=
t in_mtdofs, const char *filename)<br>+{<br>+ =C2=A0 outfd =3D fd;<br>+ =C2=
=A0 mtdofs =3D in_mtdofs;<br>+ =C2=A0 struct stat tar_file_st;<br>+ =C2=A0 =
int tar_fd;<br>+ =C2=A0 int bytes_crc =3D 0;<br>+ =C2=A0 int bytes_read =3D=
 0;<br>+ =C2=A0 int total_bytes_read =3D 0;<br>+ =C2=A0 char* crc_buf;<br>+=
 =C2=A0 uint32_t temp_file_size =3D 0;<br>+ =C2=A0 uint32_t tar_crc =3D 0;<=
br>+ =C2=A0 uint32_t mask =3D 0xffffffff;<br>+<br>+ =C2=A0 /* If sysupgrade=
.tgz passed in,<br>+ =C2=A0 =C2=A0* write 16-byte header followed by file c=
ontents.<br>+ =C2=A0 =C2=A0* TARFILEMARKER will head each subsequent block<=
br>+ =C2=A0 =C2=A0* needed to write the rest of the file. */<br>+ =C2=A0 if=
 (!stat(filename, &amp;tar_file_st)){<br>+ =C2=A0 =C2=A0 =C2=A0 tar_fd =3D =
open(filename, 0);<br>+ =C2=A0 =C2=A0 =C2=A0 if (tar_fd &lt; 0) {<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(stderr, =E2=80=9CFile %s does not e=
xist\n=E2=80=9D, filename);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 add_tar=
_cleanup(outfd, in_mtdofs);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return =
erasesize;<br>+ =C2=A0 =C2=A0 =C2=A0 }<br>+<br>+ =C2=A0 =C2=A0 =C2=A0 /* Ca=
lculate crc */<br>+ =C2=A0 =C2=A0 =C2=A0 crc_buf =3D malloc(CRC_BUF_LEN);<b=
r>+ =C2=A0 =C2=A0 =C2=A0 if(!crc_buf){<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 fprintf(stderr, =E2=80=9COut of memory\n=E2=80=9D);<br>+ =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 add_tar_cleanup(outfd, in_mtdofs);<br>+ =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return erasesize;<br>+ =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=
=A0 =C2=A0 =C2=A0 bytes_crc =3D read(tar_fd, crc_buf, CRC_BUF_LEN);<br>+ =
=C2=A0 =C2=A0 =C2=A0 tar_crc =3D crc32(0, crc_buf, bytes_crc);<br>+ =C2=A0 =
=C2=A0 =C2=A0 while(bytes_crc)<br>+ =C2=A0 =C2=A0 =C2=A0 {<br>+ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 bytes_crc =3D read(tar_fd, crc_buf, CRC_BUF_LEN);<=
br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tar_crc =3D crc32(tar_crc, crc_buf,=
 bytes_crc);<br>+ =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=A0 =C2=A0 =C2=A0 free(crc=
_buf);<br>+ =C2=A0 =C2=A0 =C2=A0 lseek(tar_fd, 0, SEEK_SET);<br>+ =C2=A0 =
=C2=A0 =C2=A0 buf =3D malloc(erasesize);<br>+ =C2=A0 =C2=A0 =C2=A0 if(!buf)=
{<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(stderr, =E2=80=9COut of m=
emory\n=E2=80=9D);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 add_tar_cleanup(=
outfd, in_mtdofs);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return erasesize=
;<br>+ =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=A0 =C2=A0 =C2=A0 ofs =3D 0;<br>+<br>=
+ =C2=A0 =C2=A0 =C2=A0 add_data(JFFS2_EOF, sizeof(JFFS2_EOF) - 1);<br>+ =C2=
=A0 =C2=A0 =C2=A0 add_data(TARFILEMARKER, sizeof(TARFILEMARKER) - 1);<br>+<=
br>+ =C2=A0 =C2=A0 =C2=A0 /* sizeof(off_t) can be 16 to 64 bytes.<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0* Set the cut off at 4 bytes unsigned */<br>+ =C2=
=A0 =C2=A0 =C2=A0 if(tar_file_st.st_size &gt;=3D 0 &amp;&amp; tar_file_st.s=
t_size &lt;=3D UINT_MAX){<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 temp_file=
_size =3D tar_file_st.st_size &amp; mask;<br>+ =C2=A0 =C2=A0 =C2=A0 }<br>+ =
=C2=A0 =C2=A0 =C2=A0 else{<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(=
stderr, =E2=80=9CIncoming tar file too large. Tar file size is %lld, max si=
ze is %u=E2=80=9D<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 , t=
ar_file_st.st_size<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 , =
UINT_MAX<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 );<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 add_tar_cleanup(outfd, in_mtdofs);<br>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(buf);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 close(tar_fd);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return erase=
size;<br>+ =C2=A0 =C2=A0 =C2=A0 }<br>+<br>+ =C2=A0 =C2=A0 =C2=A0 add_data((=
char*)&amp;tar_crc, sizeof(tar_crc));<br>+ =C2=A0 =C2=A0 =C2=A0 add_data((c=
har*)&amp;temp_file_size, sizeof(mask));<br>+<br>+ =C2=A0 =C2=A0 =C2=A0 tot=
al_bytes_read =3D read(tar_fd, buf + ofs,<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 erasesize - (sizeof(JFFS2_EOF) - 1 + sizeof(TARFILEMARKER) - 1 + siz=
eof(erasesize) + 4));<br>+ =C2=A0 =C2=A0 =C2=A0 ofs +=3D total_bytes_read;<=
br>+ =C2=A0 =C2=A0 =C2=A0 pad(erasesize);<br>+<br>+ =C2=A0 =C2=A0 =C2=A0 wh=
ile(total_bytes_read !=3D temp_file_size &amp;&amp; mtdofs &lt; mtdsize)<br=
>+ =C2=A0 =C2=A0 =C2=A0 {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ofs =3D 0=
;<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 add_data(TARFILEMARKER, sizeof(TA=
RFILEMARKER) - 1);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bytes_read =3D r=
ead(tar_fd, buf + ofs, erasesize - sizeof(TARFILEMARKER) - 1);<br>+ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ofs +=3D bytes_read;<br>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 pad(erasesize);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 total=
_bytes_read +=3D bytes_read;<br>+ =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=A0 =C2=A0=
 =C2=A0 if(total_bytes_read !=3D tar_file_st.st_size){<br>+ =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 fprintf(stderr, =E2=80=9CError reading from file %s\n=
=E2=80=9D, filename);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 add_tar_clean=
up(outfd, in_mtdofs);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(buf);<br=
>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 close(tar_fd);<br>+ =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 return erasesize;<br>+ =C2=A0 =C2=A0 =C2=A0 }<br>+ =C2=A0=
 =C2=A0 =C2=A0 free(buf);<br>+ =C2=A0 =C2=A0 =C2=A0 close(tar_fd);<br>+ =C2=
=A0 =C2=A0 =C2=A0 ofs =3D 0;<br>+ =C2=A0 =C2=A0 =C2=A0 return (mtdofs - in_=
mtdofs);<br>+ =C2=A0 }<br>=C2=A0<br>- =C2=A0 return (mtdofs - ofs);<br>+ =
=C2=A0 add_tar_cleanup(outfd, in_mtdofs);<br>+ =C2=A0 return mtdofs - in_mt=
dofs;<br>=C2=A0}<br>=C2=A0<br>=C2=A0void mtd_parse_jffs2data(const char *bu=
f, const char *dir)<br>--- a/mtd.c<br>+++ b/mtd.c<br>@@ -468,7 +468,7 @@ mt=
d_write(int imagefd, const char *mtd, <br>=C2=A0 =C2=A0 ssize_t r, w, e;<br=
>=C2=A0 =C2=A0 ssize_t skip =3D 0;<br>=C2=A0 =C2=A0 uint32_t offset =3D 0;<=
br>- =C2=A0 int jffs2_replaced =3D 0;<br>+ =C2=A0 int jffs2_tar_file_added =
=3D 0;<br>=C2=A0 =C2=A0 int skip_bad_blocks =3D 0;<br>=C2=A0<br>=C2=A0#ifde=
f FIS_SUPPORT<br>@@ -597,8 +597,8 @@ resume:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (quiet &lt; 2)<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(stderr, =E2=80=9C\nAp=
pending jffs2 data from %s to %s..\n.=E2=80=9C, jffs2file, mtd);<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* got an EOF marker - thi=
s is the place to add some jffs2 data */<br>- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 skip =3D mtd_replace_jffs2(mtd, fd, e, jffs2file);<br>=
- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 jffs2_replaced =3D 1;<br=
>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 skip =3D mtd_add_tar_fi=
le_jffs2(mtd, fd, e, jffs2file);<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 jffs2_tar_file_added =3D 1;<br>=C2=A0<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* don=E2=80=99t add it again */<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 jffs2file =3D NULL;<br=
>@@ -675,7 +675,7 @@ resume:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 offset =3D 0;<b=
r>=C2=A0 =C2=A0 }<br>=C2=A0<br>- =C2=A0 if (jffs2_replaced) {<br>+ =C2=A0 i=
f (jffs2_tar_file_added) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 switch (imageform=
at) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 case MTD_IMAGE_FORMAT_TRX:<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (trx_fixup)<br>--- a/mtd.h<br>+++ b/m=
td.h<br>@@ -19,7 +19,7 @@ extern int mtd_block_is_bad(int fd, int <br>=C2=
=A0extern int mtd_erase_block(int fd, int offset);<br>=C2=A0extern int mtd_=
write_buffer(int fd, const char *buf, int offset, int length);<br>=C2=A0ext=
ern int mtd_write_jffs2(const char *mtd, const char *filename, const char *=
dir);<br>-extern int mtd_replace_jffs2(const char *mtd, int fd, int ofs, co=
nst char *filename);<br>+extern int mtd_add_tar_file_jffs2(const char *mtd,=
 int fd, int ofs, const char *filename);<br>=C2=A0extern void mtd_parse_jff=
s2data(const char *buf, const char *dir);<br>=C2=A0<br>=C2=A0/* target spec=
ific functions */<br><br>Signed-off-by: Sean Miller &lt;<a href=3D"mailto:s=
eanmichaelmiller2014@gmail.com">seanmichaelmiller2014@gmail.com</a>&gt;<br>=
<br>These two patches (both must be applied) fix this bug.=C2=A0</div><div>=
If always mounting the jffs2 overlay and skipping the ram overlay when=C2=
=A0</div><div>sysupgrade.tgz is saved across an upgrade is the=C2=A0desired=
 behavior,=C2=A0</div><div>I will instead submit changes to the documentati=
on.</div><div><br>Thanks for your time</div></div>

--000000000000c0afcc05a2ab2711--


--===============2939206034561216454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2939206034561216454==--

